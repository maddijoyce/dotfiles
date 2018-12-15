#!/bin/bash

if test ! $(which mas)
then
  echo "Installing MAS..."
  brew install mas
fi

echo "Installing App Store Applications..."

apps=(
  404705039 # Graphic
  1295203466 # Microsoft Remote Desktop
  407963104 # Pixelmator
  1176895641 # Spark
  497799835 # Xcode
)

mas install "${apps[@]}"
