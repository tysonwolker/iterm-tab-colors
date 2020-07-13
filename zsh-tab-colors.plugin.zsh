function automatic_iterm_tab_color_cwd () {
  python -c "import random; import os; \
             random.seed('red'   + os.getcwd()); print((\"\\033]6;1;bg;red;brightness;\"   + str((random.randint(0,255)+255)/2)) + \"\\a\"),; \
             random.seed('green' + os.getcwd()); print((\"\\033]6;1;bg;green;brightness;\" + str((random.randint(0,255)+255)/2)) + \"\\a\"),; \
             random.seed('blue'  + os.getcwd()); print((\"\\033]6;1;bg;blue;brightness;\"  + str((random.randint(0,255)+255)/2)) + \"\\a\"),; \
             print(\"\\r\"),"
}

automatic_iterm_tab_color_cwd 
autoload -U add-zsh-hook
add-zsh-hook chpwd automatic_iterm_tab_color_cwd 
