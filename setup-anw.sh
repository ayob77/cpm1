#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 Updating Termux..."
pkg update -y && pkg upgrade -y

echo "📦 Installing dependencies..."
pkg install git curl python lua -y

echo "🌐 Cloning Abg's repo..."
git clone https://github.com/ayob77/cpm1.git || {
  echo "❌ Gagal clone repo. Periksa URL atau sambungan internet."
  exit 1
}

cd cpm1 || {
  echo "❌ Folder cpm1 tak wujud. Clone gagal."
  exit 1
}

echo "📁 Isi folder cpm1:"
ls -la

echo "✅ Siap! Abg dah boleh mula edit atau run skrip."
