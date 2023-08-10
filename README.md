## Introduction

This repostitory helps me setup my Mac development environment quickly. 
The implementation is inspired by [Driesvints](https://github.com/driesvints/dotfiles) dotfiles.
He also wrote extensively on the subject so if you want to make your own, check out his repostitory for tips.
Of course, you're also free to copy anything in my own .dofiles 🔥

## Setting up a new Mac

After backing up an old Mac you can now follow the following instrutions to setup a new Mac:

1. Update macOS to the latest version through system preferences.

2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/BakkerTom/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:BakkerTom/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    cd ~/.dotfiles && ./install.sh
    ```
