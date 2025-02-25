
c80129b@raven:~/sallmon-coin$ cat ../sallmon-coin-sucks/fix-meme-coin.sh
#!/bin/bash

echo "⛔ Killing existing Sallmon daemon..."
pkill -f sallmond

echo "🔥 Deleting old blockchain data..."
rm -rf ~/.sallmon
mkdir ~/.sallmon

echo "🛠 Recompiling from scratch..."
cd ~/sallmon-coin
make clean
./autogen.sh
./configure
make -j$(nproc)

echo "✅ Launching Sallmon daemon fresh..."
src/sallmond -daemon -datadir=$HOME/.sallmon

echo "⏳ Giving extra time to fully initialize..."
sleep 20

echo "📋 Checking blockchain status..."
src/sallmon-cli -datadir=$HOME/.sallmon getblockchaininfo

echo "📖 Showing the last logs for verification..."
tail -n 50 ~/.sallmon/debug.log
c80129b@raven:~/sallmon-coin$
