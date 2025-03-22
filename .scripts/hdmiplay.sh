ffplay -fflags nobuffer -input_format mjpeg -video_size 1920x1080 -framerate 30 -an /dev/video0 &
ffplay -fflags nobuffer -f alsa -i hw:3,0 -acodec pcm_s16le -ar 48000 -sync ext &
