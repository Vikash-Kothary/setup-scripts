#!/bin/bash
# auto-clean.sh

desktop_dir=~/Desktop/
downloads_dir=~/Downloads/
while inotifywait -qqre moved_to "$downloads_dir"; do
	echo 'New Download'
done=