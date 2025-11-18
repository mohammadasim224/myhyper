#!/bin/bash

# Quick run script for Hyper after initial setup
# Run this in two terminals:
#   Terminal 1: ./run.sh dev
#   Terminal 2: ./run.sh app

cd /home/user/myhyper

if [ "$1" == "dev" ]; then
    echo "🔨 Starting build watcher..."
    echo "Keep this running in Terminal 1"
    yarn run dev
elif [ "$1" == "app" ]; then
    echo "🚀 Starting Hyper..."
    echo "Run this in Terminal 2 (after dev is running)"
    yarn run app
else
    echo "Usage:"
    echo "  Terminal 1: ./run.sh dev    (build watcher)"
    echo "  Terminal 2: ./run.sh app    (Hyper application)"
    echo ""
    echo "Or use the full commands:"
    echo "  Terminal 1: yarn run dev"
    echo "  Terminal 2: yarn run app"
fi
