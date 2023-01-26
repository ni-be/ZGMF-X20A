# TODO 
Sort out Duplicate bindings Helix -> Zellij some Alt + might be double 

# Personal Cheatsheet for keybindings 

## General 
1. Super + [ ]            OS Interaction DE/WM
2. CTRL + [ ]             Terminal and other Applications
3. ALT + [ ]              Terminal Multiplexer
4. Space +[ ], CTRL+ [ ]  Text Editor 

## FCITX (henkan key available on HHKB)
    henkan, F12             JP <-> EN
    Shift+henkan            tmp Katakana (JP input)
    FN+henkan               halfwidth -> full width     

## TERMINAL (FOOT Terminal)
    SHIFT + Page_Up         Scrollback Up Page                                            
    SHIFT + Page_Down       Scrollback Down Page
    CTRL + Shift C | V      Clipboard Copy Paste                                            
    CTRL + SHift R          Search

## ZSH

### TTYD Terminal in browser

    alias ttyd="ttyd -t enableSixel=true -p 9001 zsh"
    alias ttydk="ps -ef | rg ttyd"

### GIT 
    あ - github login         ア -
    い - add, commit, push    イ -
    う -                      ウ -
    え -                      エ -
    お -                      オ -
    lui - gitui

### Zellij
    zrf        zellij run -f --  RUN cmd and open float with 
    myu        zellij
        
    ねね        choose from current sessions if no session open a new one
    ひちゃん    Latex Writing Repo
    すいせい    Exercism Session
    メタ        Meta Telingo Session
    人生        Personal Notes todo , mail, etc session 

### VSCODE
    うんこ      VS CODE 

### Bartib - Time Tracking
    peko 

### Jisho CLI
    ji, 字

### EXA
    ls             - exa
    la             - exa --all
    ll             - exa -l + icons + no user
    l1, l2, l3     - exa with tree different levels

### BAT

### SKIM

### etc 

## HELIX Editor Custom Bindings
Keybindings - https://docs.helix-editor.com/commands.html
Ctrl-,  <- ALT-. Repeat last motion (f, t, m)
Ctrl-`  <- lt-` Set the selected text to upper case
NO CONFLICT  Alt-u	Move backward in history	
NO CONFLICT  Alt-U	Move forward in history

Alt-d	Delete selection, without yanking
Alt-c	Change selection (delete and enter insert mode, without yanking)

in SHell
Ctrl-| <- Alt-|	Pipe each selection into shell command, ignoring output

Selection manipulation
Alt-s	Split selection on newlines

CTRL-; <-- Alt-;	Flip selection cursor and anchor	
CTRL-: <-- Alt-:	Ensures the selection is in forward direction	
CTRL-, <-- Alt-,	Remove the primary selection

NO CONFLICT Alt-C	Copy selection onto the previous line (Add cursor above)
NO COnflict Alt-x	Shrink selection to line bounds (line-wise selection)

NO Conflict Alt-(	Rotate selection contents backward
NO COnflict Alt-)	Rotate selection contents forward

CONFLICTS ???
Alt-J	Join lines inside selection and select space
Alt-K	Remove selections matching the regex

CONFLICTS CTRL HJKL or up down left right
Alt-o, Alt-up	Expand selection to parent syntax node (TS)
Alt-i, Alt-down Shrink syntax tree object selection (TS)
Alt-p, Alt-left	Select previous sibling node in syntax tree (TS)
Alt-n, Alt-right	Select next sibling node in syntax tree (TS)

CONFLICTS
INSERT MODE remove ctrl w  and alt d change to ctrl backspace and ctrl delete
Ctrl-w, Alt-Backspace	Delete previous word
Alt-d, Alt-Delete	Delete next word

CONFLICTS
PROMPT 
Alt-f, Ctrl-Right	Forward a word
## ZELLIJ

### LOCKED MODE
    bind "Ctrl l" { SwitchToMode "Normal"; }
        
### Normal MODE    
    #### Pane and Tab creation and closure
    bind "Alt w" { NewPane "Right";}
    bind "Alt W" { NewPane "Down";}
    bind "Alt t" { NewTab;}
    bind "Alt q" { CloseFocus;}
    bind "Alt Q" { CloseTab;}

    #### Float + Fullscreen
    bind "Alt f" {ToggleFloatingPanes;}
    bind "Alt F" { ToggleFocusFullscreen;}
       
    #### Pane focus Switch 
    bind "Alt h" { MoveFocus "Left"; }
    bind "Alt l" { MoveFocus "Right"; }
    bind "Alt j" { MoveFocus "Down"; }
    bind "Alt k" { MoveFocus "Up"; }
    bind "Alt p" { SwitchFocus; }

    #### Tab Switcheroo
    bind "Alt H" "Alt K" { GoToPreviousTab; }
    bind "Alt L" "Alt J" { GoToNextTab; }        
    bind "Alt 1" { GoToTab 1; }
    bind "Alt 2" { GoToTab 2; }
    bind "Alt 3" { GoToTab 3; }
    bind "Alt 4" { GoToTab 4; }
    bind "Alt 5" { GoToTab 5; }
    bind "Alt 6" { GoToTab 6; }
    bind "Alt 7" { GoToTab 7; }
    bind "Alt 8" { GoToTab 8; }
    bind "Alt 9" { GoToTab 9; }

    #### Session etc
    bind "Alt d" { Detach; }
    bind "Alt m" { ToggleMouseMode; }
       

### Session Menu
    bind "Esc" { SwitchToMode "Normal"; }
    bind "h" { Resize "Increase Left"; }
    bind "j" { Resize "Increase Down"; }
    bind "k" { Resize "Increase Up"; }
    bind "l" { Resize "Increase Right"; }
    bind "H" { Resize "Decrease Left"; }
    bind "J" { Resize "Decrease Down"; }
    bind "K" { Resize "Decrease Up"; }
    bind "L" { Resize "Decrease Right"; }
    bind "=" "+" { Resize "Increase"; }
    bind "-" { Resize "Decrease"; }
        
    #### Move 
    bind "n" "Tab" { MovePane; }
    bind "Alt h" { MovePane "Left"; }
    bind "Alt j" { MovePane "Down"; }
    bind "Alt k" { MovePane "Up"; }
    bind "Alt l" { MovePane "Right"; }

    #### EHM?
    bind "Alt z" { TogglePaneFrames;}
    bind "Alt e" { TogglePaneEmbedOrFloating; SwitchToMode "Normal"; }  
    bind "Alt s" { ToggleActiveSyncTab; SwitchToMode "Normal"; }         
    bind "Alt p" { SwitchToMode "RenamePane"; PaneNameInput 0;}
    bind "Alt t" { SwitchToMode "RenameTab"; TabNameInput 0; }
        
### Scroll Menu
    
    bind "Esc" { SwitchToMode "Normal"; }
    bind "e" { EditScrollback; SwitchToMode "Normal"; }
    bind "s" { SwitchToMode "EnterSearch"; SearchInput 0; }
    bind "b" { ScrollToBottom; SwitchToMode "Normal"; }
    bind "j" { ScrollDown; }
    bind "k" { ScrollUp; }
    bind "l" { PageScrollDown; }
    bind "h" { PageScrollUp; }
    bind "d" { HalfPageScrollDown; }        
    bind "u" { HalfPageScrollUp; }

### Search Menu
    bind "Esc" { SwitchToMode "Normal"; }
    bind "b" { ScrollToBottom; SwitchToMode "Normal"; }
    bind "j" { ScrollDown; }
    bind "k" { ScrollUp; }
    bind "l" { PageScrollDown; }
    bind "h" { PageScrollUp; }
    bind "d" { HalfPageScrollDown; }
    bind "u" { HalfPageScrollUp; }
    bind "n" { Search "down"; }
    bind "p" { Search "up"; }
    bind "c" { SearchToggleOption "CaseSensitivity"; }
    bind "w" { SearchToggleOption "Wrap"; }
    bind "o" { SearchToggleOption "WholeWord"; }

### SUB MENUS    
####    entersearch 
        bind "Esc" { SwitchToMode "Scroll"; }
        bind "Enter" { SwitchToMode "Search"; }
    
####    renametab 
        bind "Enter" { SwitchToMode "Normal"; }
        bind "Esc" { UndoRenameTab; SwitchToMode "Tab"; }
    
####    renamepane 
        bind "Enter" { SwitchToMode "Normal"; }
        bind "Esc" { UndoRenamePane; SwitchToMode "Pane"; }

### Shared bindings 
    #### shared_except "locked" 
        bind "Ctrl l" { SwitchToMode "Locked"; }
        bind "Ctrl q" { Quit; }
    
    #### shared_except "normal" "locked" 
        bind "Enter" "Esc" { SwitchToMode "Normal"; }
    
    #### shared_except "search" "locked" 
        bind "Alt `" { SwitchToMode "Search"; }
    
    #### shared_except "scroll" "locked" 
        bind "Alt [" { SwitchToMode "Scroll"; }

    #### shared_except "session" "locked" 
         bind "Alt ]" { SwitchToMode "Session"; }
    































































