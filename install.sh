#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Starting LocalCast-WL Installation..."

# 1. Install required system dependencies (Flask removed!)
echo "📦 Installing media dependencies (ffmpeg, pulseaudio-utils)..."
sudo apt-get update || true
sudo apt-get install -y ffmpeg pulseaudio-utils

# 2. Download the main script directly into the system's binary path
echo "⬇️ Fetching the latest release..."
sudo curl -fsSL https://raw.githubusercontent.com/RahulGorai0206/localcast-wl/main/localcast-wl -o /usr/local/bin/localcast-wl

# 3. Apply execution permissions
echo "⚙️ Making LocalCast-WL executable..."
sudo chmod +x /usr/local/bin/localcast-wl

echo ""
echo "✅ Installation Complete!"
echo "🎉 You can now type 'localcast-wl' in your terminal from anywhere to start streaming."
echo "💡 Type 'localcast-wl help' to see all available options."