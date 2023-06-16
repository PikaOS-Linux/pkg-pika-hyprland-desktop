# Clone Upstream
cd ./pika-hyprland-desktop

# Get build deps
apt-get build-dep ./ -y

# Build package
dh_make --createorig
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
