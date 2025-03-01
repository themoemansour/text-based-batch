# Batch Text-Based Game - README

## Project Overview

This is a **text-based adventure game** developed using Windows **Batch scripting**. The game is designed to be **lightweight, interactive, and engaging**, bringing classic adventure elements into a command-line environment. It features a **dynamic decision-based storyline**, multiple **player stats**, **combat mechanics**, and **branching narratives** that lead to different endings based on the player's choices.

---

## Features

### 🏰 **Storyline & Worldbuilding**

- **Multiple story arcs**: Choices impact the world and its characters.
- **Non-linear progression**: Decisions shape your adventure.
- **Text-based exploration**: Navigate through different locations, interact with NPCs, and uncover hidden secrets.
- **Dynamic consequences**: Your actions affect the story, leading to multiple endings.

### ⚔️ **Combat System**

- **Turn-based battles**: Engage in fights using text commands.
- **Enemy AI logic**: Foes make decisions based on pre-defined behaviors.
- **Stat-based mechanics**: Health, stamina, attack power, and defense all impact combat outcomes.
- **Weapons & Items**: Players can acquire weapons, potions, and armor to aid in battles.

### 🎭 **Role-Playing Elements**

- **Character customization**: Choose your class (Warrior, Rogue, Mage, etc.).
- **Skill progression**: Gain XP, level up, and unlock new abilities.
- **Reputation system**: Choices affect how NPCs treat you.
- **Quests & Side Missions**: Additional objectives provide rewards and impact the main story.

### 🗺️ **Exploration & Interaction**

- **Text-based map system**: Move between locations using commands.
- **NPC dialogues**: Engage in scripted conversations with branching options.
- **Hidden paths & Easter eggs**: Discover secret areas and lore-based bonuses.

---

## Installation & Setup

### 🖥️ **Prerequisites**

- **Windows OS** (Compatible with Windows 7, 8, 10, and 11)
- **Command Prompt (cmd.exe)**
- **No additional software required** (Runs natively on Windows systems)

### 📥 **Download & Run**

1. Clone the repository:
   ```bash
   git clone https://github.com/themoemansour/BatchTextGame.git
   ```
2. Navigate to the project folder:
   ```bash
   cd BatchTextGame
   ```
3. Run the game:
   ```bash
   start game.bat
   ```

---

## Gameplay Commands

### 📜 **Basic Commands**

| Command            | Description                                              |
| ------------------ | -------------------------------------------------------- |
| `look`             | Describes the current environment.                       |
| `move <direction>` | Move in a specific direction (north, south, east, west). |
| `talk <character>` | Engage in a conversation with an NPC.                    |
| `attack <enemy>`   | Initiate combat with a target.                           |
| `inventory`        | Check available items.                                   |
| `use <item>`       | Use a specific item from the inventory.                  |
| `stats`            | Display player statistics.                               |
| `help`             | Show available commands.                                 |
| `quit`             | Exit the game.                                           |

---

## File Structure

```
BatchTextGame/
│── game.bat               # Main game script
│── story.bat              # Storyline and branching logic
│── combat.bat             # Combat mechanics
│── inventory.bat          # Inventory and item management
│── npcs.bat               # NPC dialogues and interactions
│── worldmap.bat           # Navigation system
│── save.bat               # Save/load system
└── assets/                # ASCII art and other assets
```

---

## Development Notes

### 🔨 **Game Logic & Flow**

- The game is structured as a **state-driven system**, where each action updates variables that control progress.
- Combat mechanics use **randomized attack rolls** and **pre-determined AI behaviors**.
- Save/load functionality allows players to **continue progress between sessions**.

### 📌 **Planned Features**

- **Expanded storyline** with more branching paths.
- **More character classes** with unique abilities.
- **Advanced combat mechanics** with strategic elements.
- **Procedurally generated dungeons**.
- **Sound effects and ASCII animations**.

---

## Contributions & Support

- Contributions are welcome! Feel free to submit pull requests or open issues.
- If you encounter bugs, report them on GitHub under **Issues**.
- Future updates and expansions will be announced in the repository.

---

## License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute the game as long as you provide attribution.

---

## Contact

For any questions, feel free to reach out via GitHub or email: **[Your Email]**

