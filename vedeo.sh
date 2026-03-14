
raspivid -n -w 1280 -h 800 -b 1000000 -fps 15 -t 0 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink host=192.168.0.154 port=9000
