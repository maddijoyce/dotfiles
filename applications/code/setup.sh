echo "Setting Up VS Code..."

code_preferences="$HOME/Library/Application Support/Code"

mkdir -p "$code_preferences/User"
ln -fs "$dotfiles_dir/applications/code/settings.json" "$code_preferences/User/settings.json"

extensions=(
  attilabuti.vscode-mjml
  eg2.tslint
  esbenp.prettier-vscode
  frankschmid.serverless-vscode
  kumar-harsh.graphql-for-vscode
  mauve.terraform
  ms-vscode.cpptools
  redhat.java
  ricard.postcss
  sodatea.velocity
  uloco.theme-bluloco-dark
  vsciot-vscode.vscode-arduino
  vscjava.vscode-java-debug
  vscjava.vscode-java-dependency
  vscjava.vscode-java-pack
  vscjava.vscode-java-test
  vscjava.vscode-maven
  wix.vscode-import-cost
)

for i in ${extensions[@]}; do
  code --install-extension $i
done
