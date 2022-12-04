VERSION=$(wget --save-headers --output-document - https://inkscape.org/release | grep platforms | cut -d/ -f4)
echo Latest Version: $VERSION
DLPATH=$(wget --save-headers --output-document - https://inkscape.org/release/$VERSION/platforms | grep x86_64.AppImage | cut -d'"' -f2)
BASEURL=https://inkscape.org
DLLINK=$BASEURL$DLPATH
echo Version: $VERSION
echo $DLLINK
wget -O Inkscape-$VERSION.AppImage $DLLINK
chmod +x Inkscape-$VERSION.AppImage
