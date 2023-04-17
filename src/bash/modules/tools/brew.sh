#!/bin/bash
# shellcheck source=/dev/null

function brew.install {
    curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh" | /bin/bash
    echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
}

function tools.brew {

    which -s brew || brew.install
    brew "$@"

}
