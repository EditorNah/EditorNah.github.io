#dpkg-scanpackages deb/*.deb /dev/null > Packages
tar zcvf Packages.gz Packages
bzip2 -k Packages Packages.bz2
