cp -a ../packages/repos/* .
for f in $(find -type l); do 
    cp --remove-destination `readlink -f "$f"` "$f"
done
git add --all
