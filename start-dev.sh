#!/bin/bash

# Hyper CCD Orchestrator - Development Startup Script
# This script helps you run Hyper in development mode with the orchestrator plugin

echo "🚀 Hyper CCD Orchestrator - Development Mode"
echo "=============================================="
echo ""

# Check if in correct directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the myhyper directory"
    exit 1
fi

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    yarn install
    if [ $? -ne 0 ]; then
        echo "❌ Failed to install dependencies"
        exit 1
    fi
    echo "✅ Dependencies installed"
    echo ""
fi

# Check if target directory exists (indicates build has run)
if [ ! -d "target" ]; then
    echo "🔨 Building Hyper for the first time (this may take a few minutes)..."
    yarn run build
    if [ $? -ne 0 ]; then
        echo "❌ Build failed"
        exit 1
    fi
    echo "✅ Build complete"
    echo ""
fi

echo "📋 Next Steps:"
echo ""
echo "You need TWO terminal windows:"
echo ""
echo "Terminal 1 - Build Watcher (run this first):"
echo "  cd /home/user/myhyper"
echo "  yarn run dev"
echo ""
echo "Terminal 2 - Hyper App (run after Terminal 1 is running):"
echo "  cd /home/user/myhyper"
echo "  yarn run app"
echo ""
echo "Or run these commands directly:"
echo ""
echo "# Terminal 1"
read -p "Press Enter to start the build watcher (Terminal 1), or Ctrl+C to exit and run manually..."

yarn run dev
