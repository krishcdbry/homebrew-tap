# Homebrew Tap

Personal Homebrew tap for krishcdbry projects.

## Installation

```bash
brew tap krishcdbry/tap
```

## Available Packages

### Control Tower (Cask)

Unified menu bar app for monitoring AI coding assistant usage.

```bash
brew install --cask control-tower
```

**Features:**
- Monitor usage across Claude, Codex, Cursor, Gemini, Copilot, Antigravity
- Menu bar app with quick status overview
- CLI tool (`ct`) for terminal usage
- Smart notifications with configurable thresholds

**Requirements:** macOS 14.0 (Sonoma) or later

[Repository](https://github.com/krishcdbry/ControlTower) | [Documentation](https://github.com/krishcdbry/ControlTower#readme)

---

### NexaDB (Formula)

Next-gen AI database with vector search, TOON format, and unified architecture.

```bash
brew install nexadb
```

**Features:**
- HNSW Vector Search (200x faster)
- Enterprise Security (AES-256-GCM, RBAC)
- Advanced Indexing (B-Tree, Hash, Full-text)
- TOON Format (40-50% LLM cost savings)
- 20K reads/sec, <1ms lookups

**Quick Start:**
```bash
nexadb start        # Start all services
nexa -u root -p     # Interactive CLI
```

**Default credentials:** `root` / `nexadb123`

[Repository](https://github.com/krishcdbry/nexadb) | [Website](https://nexadb.io)
