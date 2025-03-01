@echo off
::============================
:: Batch Text-Based RPG Game
::============================
title Batch Text-Based RPG Game
color 0A

:: Player Variables
set /a health=100
set /a stamina=50
set /a gold=0
set /a attack=10
set /a defense=5
set /a level=1
set /a xp=0
set /a inventory_slots=5
set /a potions=2
set player_class=

:: Game Start
:menu
cls
ECHO ======================================
ECHO           TEXT-BASED RPG GAME
ECHO ======================================
ECHO 1. Start Game
ECHO 2. Load Game
ECHO 3. Exit
ECHO ======================================
SET /P choice=Choose an option: 
IF "%choice%"=="1" GOTO start_game
IF "%choice%"=="2" GOTO load_game
IF "%choice%"=="3" EXIT
GOTO menu

:start_game
cls
ECHO Welcome, traveler! Choose your class:
ECHO 1. Warrior (+20 Health, +5 Attack, +2 Defense)
ECHO 2. Rogue (+10 Stamina, +7 Attack, +3 Defense)
ECHO 3. Mage (+30 Mana, +3 Attack, +1 Defense)
SET /P class_choice=Choose your class (1-3): 
IF "%class_choice%"=="1" (set player_class=Warrior & set /a health+=20 & set /a attack+=5 & set /a defense+=2)
IF "%class_choice%"=="2" (set player_class=Rogue & set /a stamina+=10 & set /a attack+=7 & set /a defense+=3)
IF "%class_choice%"=="3" (set player_class=Mage & set /a health+=10 & set /a attack+=3 & set /a defense+=1)
ECHO You have chosen %player_class%!
PAUSE
GOTO game_loop

:game_loop
cls
ECHO ======================================
ECHO           Player Stats
ECHO ======================================
ECHO Health: %health%
ECHO Stamina: %stamina%
ECHO Attack: %attack%
ECHO Defense: %defense%
ECHO Gold: %gold%
ECHO Level: %level%
ECHO XP: %xp%
ECHO Inventory Slots: %inventory_slots%
ECHO Potions: %potions%
ECHO ======================================
ECHO 1. Explore
ECHO 2. View Inventory
ECHO 3. Rest
ECHO 4. Save Game
ECHO 5. Exit to Main Menu
ECHO ======================================
SET /P game_choice=Choose an action: 
IF "%game_choice%"=="1" GOTO explore
IF "%game_choice%"=="2" GOTO inventory
IF "%game_choice%"=="3" GOTO rest
IF "%game_choice%"=="4" GOTO save_game
IF "%game_choice%"=="5" GOTO menu
GOTO game_loop

:explore
cls
ECHO You venture into the unknown...
SET /A encounter=%RANDOM% %%3
IF %encounter%==0 GOTO battle
IF %encounter%==1 GOTO find_treasure
IF %encounter%==2 GOTO nothing_happens

:battle
ECHO You encounter an enemy!
SET /A enemy_health=30
SET /A enemy_attack=5
ECHO Enemy Health: %enemy_health%
ECHO Enemy Attack: %enemy_attack%
:combat_loop
ECHO 1. Attack
ECHO 2. Use Potion
ECHO 3. Run Away
SET /P combat_choice=Choose an action: 
IF "%combat_choice%"=="1" GOTO attack_enemy
IF "%combat_choice%"=="2" GOTO use_potion
IF "%combat_choice%"=="3" GOTO run_away
GOTO combat_loop

:attack_enemy
SET /A enemy_health-=%attack%
ECHO You attack the enemy! Enemy Health: %enemy_health%
IF %enemy_health% LEQ 0 GOTO enemy_defeated
SET /A health-=%enemy_attack%
ECHO The enemy strikes back! Your Health: %health%
IF %health% LEQ 0 GOTO game_over
GOTO combat_loop

:enemy_defeated
ECHO You have defeated the enemy!
SET /A xp+=20
SET /A gold+=10
ECHO You gained 20 XP and 10 Gold!
PAUSE
GOTO game_loop

:use_potion
IF %potions% LEQ 0 ECHO No potions left! & PAUSE & GOTO combat_loop
SET /A health+=20
SET /A potions-=1
ECHO You used a potion! Health: %health%
GOTO combat_loop

:run_away
ECHO You successfully ran away!
PAUSE
GOTO game_loop

:find_treasure
ECHO You found a chest containing 50 gold!
SET /A gold+=50
PAUSE
GOTO game_loop

:nothing_happens
ECHO You find nothing of interest.
PAUSE
GOTO game_loop

:inventory
cls
ECHO Inventory:
ECHO - Potions: %potions%
ECHO - Gold: %gold%
PAUSE
GOTO game_loop

:rest
ECHO You rest and regain 30 health.
SET /A health+=30
PAUSE
GOTO game_loop

:save_game
ECHO %health% %stamina% %attack% %defense% %gold% %level% %xp% %potions% > savefile.txt
ECHO Game Saved!
PAUSE
GOTO game_loop

:load_game
IF NOT EXIST savefile.txt ECHO No saved game found! & PAUSE & GOTO menu
SET /P health= < savefile.txt
SET /P stamina= < savefile.txt
SET /P attack= < savefile.txt
SET /P defense= < savefile.txt
SET /P gold= < savefile.txt
SET /P level= < savefile.txt
SET /P xp= < savefile.txt
SET /P potions= < savefile.txt
ECHO Game Loaded!
PAUSE
GOTO game_loop

:game_over
ECHO You have died...
PAUSE
GOTO menu
