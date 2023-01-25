
## SWAY WINDOW MANAGER
### APPLICATIONS
    bindsym $mod+Return exec $term
    bindsym $mod+i exec $browser
    bindsym $mod+shift+Return exec foot -e ~/.cargo/bin/fx
  
#### CLI TOOLS

##### TTYD Terminal in Browser start Headless
        bindsym $mod+shift+i exec google-chrome-stable
        bindsym $mod+ctrl+i  exec ttyd -t enableSixel=true -p 9001 zsh

### Moving around:

#### Move your focus around
    bindsym $mod+$left focus left
    bindsym $mod+$down focus down
    bindsym $mod+$up focus up
    bindsym $mod+$right focus right
    
    #### Or use $mod+[up|down|left|right]
    bindsym $mod+Left focus left
    bindsym $mod+Down focus down
    bindsym $mod+Up focus up
    bindsym $mod+Right focus right

    #### Move the focused window with the same, but add Shift
    bindsym $mod+Shift+$left move left
    bindsym $mod+Shift+$down move down
    bindsym $mod+Shift+$up move up
    bindsym $mod+Shift+$right move right
    
    #### Ditto, with arrow keys
    bindsym $mod+Shift+Left move left
    bindsym $mod+Shift+Down move down
    bindsym $mod+Shift+Up move up
    bindsym $mod+Shift+Right move rightH,J,K,L 

### POWER MANAGEMENT
    bindsym $mod+Shift+delete Power Menu
       - p  poweroff
       - r  reboot
       - l  lock
       - e  log out
       - s  suspend               

### SCRATCHPAD
    bindsym $mod+Shift+minus move scratchpad
    bindsym $mod+minus scratchpad show

### SCREENSHOT
    bindsym Mod4+Print exec grimshot save activei # current window
    bindsym Print exec grimshot save area # select area
    bindsym Mod4+Shift+Print  exec grimshot save output # current output
    bindsym Mod4+Ctrl+Print  exec grimshot save window # select a windowi

### WORKSPACES
    bindsym $mod+SHift+q  kill programm
    bindsym $mod+d exec $menu

    bindsym $mod+m sticky toggle  -> float on every workspace on a single monitor    
    n = 1..10 (0)
    bindsym $mod+<n> workspace number <n>
    bindsym $mod+Shift+<n> move container to workspace number <1>

    bindsym $mod+b splith
    bindsym $mod+v splitv

    Switch the current container between different layout styles
    bindsym $mod+s layout stacking
    bindsym $mod+w layout tabbed
    bindsym $mod+e layout toggle split

    Make the current focus fullscreen
    bindsym $mod+f fullscreen

    Toggle the current focus between tiling and floating mode
    bindsym $mod+Shift+space floating toggle

    Swap focus between the tiling area and the floating area
    bindsym $mod+space focus mode_toggle

    Move focus to the parent container
    bindsym $mod+a focus parent

    Resize
    mod+r mode "resize"
    use h,j,k,l

#### CLI TOOLS

##### TTYD Terminal in Browser start Headless
        bindsym $mod+shift+i exec google-chrome-stable
        bindsym $mod+ctrl+i  exec ttyd -t enableSixel=true -p 9001 zsh

   ### FCITX (henkan key available on HHKB)
    henkan, F12             JP <-> EN
    Shift+henkan            tmp Katakana (JP input)
    FN+henkan               halfwidth -> full width     

### TERMINAL (FOOT Terminal)
    SHIFT + Page_Up         Scrollback Up Page                                            
    SHIFT + Page_Down       Scrollback Down Page
    CTRL + Shift C | V      Clipboard Copy Paste                                            
    CTRL + SHift R          Search

