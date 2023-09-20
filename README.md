# ZSH Add sudo to the current line or previous command

A simple zsh plugin to add a sudo to the current line or previous command.
Useful when you forget to add sudo to a command.

## Usage

- Load the plugin with your favourite zsh plugin manager or simply source the
  [zsh-sudo-previous-current.plugin.zsh](zsh-sudo-previous-current.plugin.zsh)
  file
- Type a command and press `control-x and s` to add sudo. If you don't type any
  command, the previous command will be used.

## CONFIGURATION

- `ZSH_SUDO_PREVIOUS_CURRENT_BIND`: Key binding to add sudo to the current line
  or previous command. Default: `^x s` which is `ctrl+x and s`
- `ZSH_SUDO_PREVIOUS_CURRENT_CMD`: Command to use for sudo. Default: `sudo`

## Authors

### Chmouel Boudjnah

- Fediverse - <[@chmouel@fosstodon.org](https://fosstodon.org/@chmouel)>
- Twitter - <[@chmouel](https://twitter.com/chmouel)>
- Blog - <[https://blog.chmouel.com](https://blog.chmouel.com)>
