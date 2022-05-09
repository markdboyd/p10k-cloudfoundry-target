# p10k-cloudfoundry-target

## About

This is a custom prompt segment for the [Powerlevel10k ZSH theme](https://github.com/romkatv/powerlevel10k) that shows your current [CloudFoundry](https://www.cloudfoundry.org/) target organization and space as a terminal prompt segment.

## Installation

1. Clone the repo to your home directory:

    ```shell
    git clone https://github.com/markdboyd/p10k-cloudfoundry-target.git
    ```

1. Add this to your `.zshrc` above where you are sourcing the files for the Powerlevel10k theme:

    ```zsh
    source $HOME/p10k-cf-prompt-segment/cf-prompt.zsh
    ```

1. Add `cloudfoundry_target` to your `POWERLEVEL9K_LEFT_PROMPT_ELEMENTS` in the `~/.p10k.zsh` file

## Acknowledgements

Inspired by [this gist](https://gist.github.com/go-zen-chu/61d7457b83e31cbe02f17c1bb2b827c7).
