function get_random_rgb_from_cwd () {
  local color=$1;
  echo $(python -c "import random; import os; random.seed('$color' + os.getcwd()); print random.randint(0,255)")
}

function set_iterm_tab_color () {
  local color=$1; 
  local color_rgb_value=$(get_random_rgb_from_cwd $color)
  echo -e "\033]6;1;bg;$color;brightness;$color_rgb_value\a"
}

function automatic_iterm_tab_color_cwd () {
  set_iterm_tab_color red
  set_iterm_tab_color green
  set_iterm_tab_color blue
}

autoload -U add-zsh-hook
add-zsh-hook chpwd automatic_iterm_tab_color_cwd 
