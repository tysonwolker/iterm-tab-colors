# iterm-tab-colors 
> Zsh plugin that automatically changes iTerm tab color based on the current
> working directory 

The aim of this plugin is to set a random but consistent tab color on iTerm tabs based on
the directory you are in. If you have more than one tab in the same working
directory they will have the same color and will remain the same every
terminal session. 

Installing with zplug/Antigen/Zgen
----------------------------

Installing with [zplug](https://github.com/zplug/zplug). Just add the following line to your `.zshrc`:
```
zplug tysonwolker/iterm-tab-colors
```

Installing with [Antigen](https://github.com/zsh-users/antigen). Just add the following line to your `.zshrc`:

```
antigen bundle tysonwolker/iterm-tab-colors
```

Installing with [Zgen](https://github.com/tarjoilija/zgen). Add the following line to your `.zshrc`:

```
zgen load tysonwolker/iterm-tab-colors
```

Installing with [Oh My Zsh](https://ohmyz.sh/):
```sh
git clone https://github.com/tysonwolker/iterm-tab-colors.git  $ZSH_CUSTOM/plugins/zsh-tab-colors
# then add `zsh-tab-colors` to `plugins` in your .zshrc 
```
