#!/bin/bash
#
# ---------------------------------------------------------------------
# MCreator Launcher for Unix Like systems with Launcher creation
# ---------------------------------------------------------------------
#

# Get current directory
MCREATOR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# make launcher desktop file
if [[ ! -f "mcreator.desktop" ]]; then
    cat > mcreator.desktop <<EOL
[Desktop Entry]
Exec=/bin/bash -c 'cd "${MCREATOR_DIR}" && ./mcreator.sh'
Type=Application
Terminal=false
Name=MCreator
Icon=${MCREATOR_DIR}/icon.png
EOL
    chmod +x mcreator.desktop
    cp mcreator.desktop ~/Desktop/mcreator.desktop
fi

# launch MCreator with JavaFX
JAVA_FX_PATH=/usr/share/openjfx/lib
java \
  --module-path "$JAVA_FX_PATH" \
  --add-modules javafx.controls,javafx.fxml,javafx.media,javafx.web,javafx.swing \
  --add-exports=javafx.web/com.sun.javafx.webkit=ALL-UNNAMED \
  --add-exports=javafx.graphics/com.sun.javafx.application=ALL-UNNAMED \
  -Dmcreator.disableDiscord=true \
  -Ddisable.discord.rpc=true \
  -Dprism.order=sw \
  -Djava.awt.headless=false \
  -cp "${MCREATOR_DIR}/lib/*" \
  net.mcreator.Launcher "$@"
