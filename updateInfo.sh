dpkg-scanpackages deb/*.deb /dev/null > Packages
sed -i "" 's/deb\//\.\/deb\//g' Packages
tar zcvf Packages.gz Packages
bzip2 -k Packages Packages.bz2
