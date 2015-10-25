#!/bin/bash
cd "$(dirname "$0")"
for url in $(curl -s https://www.iblocklist.com/lists.php \
| hxwls \
| grep -v png \
| grep 'list=' \
| sed 's|/list?list=||g' \
| sed 's|^|http://list.iblocklist.com/?list=|g' \
| sed 's|$|\&fileformat=p2p\&archiveformat=gz|g'); do wget --no-verbose "${url}" -O - | gunzip |egrep -v '^#' >> list; done

gzip list
echo "DONE"
ls -lah list.gz
mv list.gz $HOME/$BLOCK_LIST_DEST
exit 0
