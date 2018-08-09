awk -F: '{tmp=tmp+$2} END{print tmp}' rooms
