pkill -9 -f sallmond
sleep 3

rm -rf ~/.sallmon
mkdir -p ~/.sallmon

echo -e "rpcuser=sallmonrpcuser\nrpcpassword=testpassword123\ndaemon=1\nserver=1\nrpcallowip=127.0.0.1" > ~/.sallmon/sallmon.conf

src/sallmond -daemon -conf=$HOME/.sallmon/sallmon.conf -datadir=$HOME/.sallmon
sleep 5

src/sallmon-cli -rpcuser=sallmonrpcuser -rpcpassword=testpassword123 -conf=$HOME/.sallmon/sallmon.conf getblockchaininfo
