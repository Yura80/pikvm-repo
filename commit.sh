rm -rf rpi3-arm
cp -a ../packages/repos/* .
for f in $(find -type l); do 
    cp --remove-destination `readlink -f "$f"` "$f"
done
rm -rf rpi3-arm
cp -a rpi2-arm rpi3-arm
git add --all
git commit -m "repo update"
git push
