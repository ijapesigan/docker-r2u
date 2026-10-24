#!/bin/bash

set -e

# tools not in apt.txt: lazygit, pfetch, quarto, pandoc, gh

# release file names by architecture (amd64 and arm64 builds)
case "$(dpkg --print-architecture)" in
    arm64)
        LAZYGIT_ARCH=arm64
        QUARTO_ARCH=linux-arm64
        ;;
    *)
        LAZYGIT_ARCH=x86_64
        QUARTO_ARCH=linux-amd64
        ;;
esac

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
rm -rf lazygit*

# pfetch
git clone https://github.com/dylanaraps/pfetch.git
install pfetch/pfetch /usr/local/bin/
rm -rf pfetch

# quarto
QUARTO_VERSION=$(curl -s "https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo quarto.tar.gz "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-${QUARTO_ARCH}.tar.gz"
mkdir -p /usr/local
tar -zxf quarto.tar.gz -C /usr/local --strip-components=1
rm -rf quarto*

# pandoc
wget https://raw.githubusercontent.com/rocker-org/rocker-versioned2/master/scripts/install_pandoc.sh
bash install_pandoc.sh
rm -rf install_pandoc.sh

# gh
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null
apt-get update
apt-get install -y gh

echo -e "\nInstall tools, done!"
