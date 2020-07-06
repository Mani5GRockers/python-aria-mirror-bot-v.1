export MAX_DOWNLOAD_SPEED=0
export MAX_CONCURRENT_DOWNLOADS=10
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 \
  --max-connection-per-server=10 --rpc-max-request-size=1024T \
  --seed-time=0.01 --min-split-size=10M --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
   --max-overall-upload-limit=100M --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS
