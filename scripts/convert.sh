for file in *; do ffmpeg -i "${file}"  -acodec libmp3lame -ab 128k "${file}.mp3" && rm "${file}"; done
