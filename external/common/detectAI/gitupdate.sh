home="/home/orangepi"
gitstorage="${home}/detectAI"
cd $home
if [ -z "$gitstorage" ]; then
        echo "detectAI directory is not exist!"
else
        echo "detectAI diretory is already exist!"
        sudo rm -rf $gitstorage
fi
cd $home
git clone https://github.com/Roboteerservermms/detectAI.git

