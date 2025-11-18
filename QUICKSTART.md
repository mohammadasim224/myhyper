# 🚀 Quick Start Guide - Hyper CCD Orchestrator

This is your forked Hyper terminal with the **CCD/Codex Orchestrator** plugin installed!

## What You Have

✅ Hyper terminal (forked and ready)
✅ CCD/Codex Orchestrator plugin (v0.3.0) pre-installed
✅ Multi-provider LLM support (OpenRouter, DeepSeek, GLM-4, etc.)
✅ Window splitting and renaming features
✅ Development configuration ready

## Running Hyper (First Time)

### Option 1: Automatic Setup (Easiest)

```bash
cd /home/user/myhyper
./start-dev.sh
```

This will:
1. Install dependencies if needed
2. Build Hyper if needed
3. Guide you through starting the dev environment

### Option 2: Manual Steps

#### Step 1: Install Dependencies
```bash
cd /home/user/myhyper
yarn install
```

#### Step 2: Build Hyper
```bash
yarn run build
```
(This takes 2-5 minutes the first time)

#### Step 3: Run Development Environment

You need **TWO terminal windows**:

**Terminal 1 - Build Watcher:**
```bash
cd /home/user/myhyper
yarn run dev
```
Keep this running - it watches for file changes.

**Terminal 2 - Hyper App:**
```bash
cd /home/user/myhyper
yarn run app
```
This launches Hyper!

## Quick Test

Once Hyper opens:

1. **Look for the "Orchestrate" button** in the top header bar
   - If you see it: ✅ Plugin loaded successfully!

2. **Click "Orchestrate"**
   - Enter: "Set up a Python Flask development environment"
   - Click "Run Orchestrator"
   - Watch it create tabs!

3. **Test Window Management:**
   - Press **Ctrl+Shift+E** to split vertically
   - Press **Ctrl+Shift+R** to rename a pane
   - Press **Ctrl+Shift+O** to split horizontally

## Configuration (Optional)

### Get an LLM API Key

For real task decomposition, get an API key from one of these:

**OpenRouter** (Recommended - easiest):
- Go to: https://openrouter.ai/keys
- Sign up and create a free API key
- Gives access to Claude, GPT, and many others

**DeepSeek** (Cost-effective):
- Go to: https://platform.deepseek.com/api_keys
- Sign up and create an API key

**Others:** GLM-4, OpenAI, Anthropic (see plugin README)

### Configure in Hyper

1. Click "Orchestrate" button
2. Click "▶ Show Settings"
3. Select provider (e.g., "OpenRouter")
4. Paste API key
5. Done! Settings auto-save.

## Keyboard Shortcuts

### Orchestrator
- Click the "Orchestrate" button to open

### Window Management
- **Ctrl+Shift+R** - Rename current pane
- **Ctrl+Shift+E** - Split vertically (side-by-side)
- **Ctrl+Shift+O** - Split horizontally (top/bottom)

### Developer Tools
- **Ctrl+Shift+I** - Open developer console
- **Ctrl+R** - Reload Hyper

## Example Workflow

```
1. Open Hyper (yarn run app)
2. Click "Orchestrate"
3. Configure API key (first time only)
4. Enter task: "Set up a Node.js Express API with tests"
5. Click "Run Orchestrator"
6. It creates multiple tabs:
   - ccd-research-express
   - codex-setup-project
   - codex-implement-api
   - ccd-setup-tests
7. Split panes and rename them:
   - Press Ctrl+Shift+E to split
   - Press Ctrl+Shift+R to rename
8. Organized workspace ready!
```

## Troubleshooting

### Can't see "Orchestrate" button?

Check `hyper.json` has this:
```json
"localPlugins": ["hyper-ccd-orchestrator"]
```

Then restart Hyper completely.

### Build errors?

```bash
# Clean everything and rebuild
rm -rf node_modules target
yarn install
yarn run build
```

### Plugin errors?

Open Developer Console (Ctrl+Shift+I) and check for errors.

## Files Created for You

- ✅ `hyper.json` - Development configuration
- ✅ `start-dev.sh` - Quick start script
- ✅ `plugins/hyper-ccd-orchestrator/` - The orchestrator plugin
- ✅ This guide (QUICKSTART.md)

## Plugin Features

### Orchestration
- Natural language task decomposition
- Multiple LLM providers
- Auto-creates named terminal tabs
- CCD/Codex agent conventions

### Window Management
- Split panes vertically/horizontally
- Rename any pane with custom names
- Keyboard shortcuts
- Organized workspace

## Documentation

- **Plugin README**: `plugins/hyper-ccd-orchestrator/README.md`
- **Product Requirements**: `plugins/hyper-ccd-orchestrator/PRD.md`
- **Hyper Plugin Docs**: `PLUGINS.md`

## Need Help?

1. Check the developer console (Ctrl+Shift+I)
2. Read the plugin README
3. Check Hyper logs in the terminal where you ran `yarn run app`

## Pro Tips

- Use fallback mode (no API key) to test the plugin first
- Name your panes descriptively: "api", "tests", "logs", "db"
- Split before you run commands to set up your workspace
- Use the orchestrator for complex multi-step tasks
- Combine orchestration + manual splits for perfect layouts

---

**You're all set!** 🎉

Run `./start-dev.sh` or manually run `yarn run dev` + `yarn run app` to get started!
