# LocalCast-WL 📡

An ultra-lightweight, hybrid Wayland screen and audio streamer.

LocalCast-WL bypasses the strict security limitations of Wayland by using your browser's native WebRTC and D-Bus integration to capture video losslessly, while tapping into PipeWire/PulseAudio via FFmpeg to stream system audio seamlessly.

## ✨ Features

* **Wayland Native:** Avoids the dreaded black screens and crash loops of traditional CLI capture tools on modern Linux distros.
* **System Audio Capture:** Overcomes Chrome's Linux limitation by injecting your system's audio directly into the stream via PulseAudio/PipeWire.
* **Browser Auto-Detection:** Automatically hunts for Chrome, Brave, Edge, Opera, or Firefox and launches a distraction-free app window.
* **Zero-Latency Video:** Uses local WebRTC loops to display your screen instantly.
* **One-Command Install:** Gets you up and running globally in seconds.

---

## ⚡ Quick Installation

Run this single command in your terminal to install all dependencies and set up LocalCast-WL globally:

```bash
curl -fsSL https://raw.githubusercontent.com/RahulGorai0206/localcast-wl/main/install.sh | bash
```
*(Note: Be sure to review the `install.sh` script if you prefer to know what is being executed on your machine!)*

### Manual Installation
If you prefer not to use the automated script, you can install the dependencies and the tool manually:

```bash
# 1. Install dependencies
sudo apt-get update
sudo apt-get install -y ffmpeg pulseaudio-utils python3-flask

# 2. Clone the repository
git clone [https://github.com/RahulGorai0206/localcast-wl.git](https://github.com/RahulGorai0206/localcast-wl.git)
cd localcast-wl

# 3. Make executable and move to bin
chmod +x localcast-wl
sudo mv localcast-wl /usr/local/bin/
```

---

## 🚀 Usage

Once installed, simply run the following command from anywhere in your terminal:

```bash
localcast-wl
```

This will spin up the local server and auto-detect your browser to open a minimal capture window. Select the screen you want to share, and your stream will begin immediately alongside your system audio.

To stop the stream, simply press `Ctrl + C` in your terminal.

### CLI Options:

* Run the stream on a custom port (Default is 5000):
  ```bash
  localcast-wl --port 8080
  ```
* Force the tool to launch using a specific browser:
  ```bash
  localcast-wl --browser firefox
  ```
  *Supported options: `chrome`, `brave`, `edge`, `opera`, `firefox`.*

---

## 🛠️ Prerequisites

* A Linux distribution running Wayland.
* `ffmpeg` and `pulseaudio-utils` (handled automatically by the install script).
* A supported modern web browser installed.

---

## 🐛 Troubleshooting

**Q: The video plays, but I don't hear any system audio.**
A: LocalCast-WL looks for your default PulseAudio/PipeWire sink. Ensure that your system's output volume isn't muted. If you have a complex audio routing setup (like Carla or Helvum), ensure the default monitor sink is capturing desktop audio.

**Q: My browser opens, but it's not in "App" mode.**
A: Only Chromium-based browsers (Chrome, Brave, Edge, Opera) support the `--app` flag. If LocalCast-WL falls back to Firefox or your system default, it will open as a standard new window. 

---

## 📄 License

This project is open-source and available under the MIT License.