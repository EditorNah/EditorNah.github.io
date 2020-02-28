sudo dpkg-scanpackages deb/ > Packages
sed -i "" 's/deb\//\.\/deb\//g' Packages
rm -f Packages.gz
rm -f Packages.bz2
tar zcvf Packages.gz Packages
bzip2 -k Packages Packages.bz2
git add .
git commit -m '更新'
git push
