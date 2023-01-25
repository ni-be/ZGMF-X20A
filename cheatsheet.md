# TODO 
Sort out Tabs vs Spaces....... 
Sort out Duplicate bindings Helix -> Zellij some Alt + might be double 

# Personal Cheatsheet for keybindings 

## General 
1. Super + [ ]            OS Interaction DE/WM
2. CTRL + [ ]             Terminal and other Applications
3. ALT + [ ]              Terminal Multiplexer
4. Space +[ ], CTRL+ [ ]  Text Editor 

## GNOME 

    Henkan                  FCITX5 Switch Language EN -> JP                             
    SHIFT + Henkan          Katakana tmp input
    FN + Henkan             Switch between Katakana, Halfwidth, fullwidth               
    SUPER + 1,..,7          Switch Workspaces
    SUPER + SHIFT + 1,...,7 MOVE WINDOW to that Workspace                               
    SUPER + R               Toggle Resize
    SUPER + H,J,K,L         resize                                                        
    SUPER + O               Change V-H split                                            
    SUPER + Mouse drag      change window position
    SUPER + M               Window on all Workspaces                                   
    SUPER + LEFT RIGHT      Switch workspace


## SWAY WINDOW MANAGER
### APPLICATIONS
    bindsym $mod+Return exec $term
    bindsym $mod+i exec $browser
    bindsym $mod+shift+Return exec foot -e ~/.cargo/bin/fx
    bindsym $mod+alt+e exec flatpak run app/im.riot.Riot/
    bindsym $mod+alt+t exec flatpak run app/org.telegram.desktop/
    bindsym $mod+alt+b  exec flatpak run app/com.bitwarden.desktop/
    bindsym $mod+alt+z  exec flatpak run app/org.zotero.Zotero/
    bindsym $mod+alt+w exec flatpak run app/us.zoom.Zoom/

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

### APPLICATION

    SUPER + ENTER           FOOT TERMINAL                                               
    SUPER + I               Brave-Browser
    SUPER + D               Search Menu                                                 
    SUPER + T               Open Todo list (GNOME ONLY)


## TERMINAL (FOOT Terminal)
    SHIFT + Page_Up         Scrollback Up Page                                            
    SHIFT + Page_Down       Scrollback Down Page
    CTRL + Shift C | V      Clipboard Copy Paste                                            
    CTRL + SHift R          Search

## ZSH
### ALIAS
#### GIT 
    あ - github login         ア -
    い - add, commit, push    イ -
    う -                      ウ -
    え -                      エ -
    お -                      オ -
    lui - gitui

#### Zellij
    zrf  zellij run -f --  RUN cmd and open float with 
    myu  zellij
        
    ねね choose from current sessions if no session open a new one
    ひちゃん　Latex Writing Repo
    すいせい　Exercism Session
    メタ      Meta Telingo Session
    人生      Personal Notes todo , mail, etc session 

#### VSCODE
    うんこ    VS CODE 

#### Bartib - Time Tracking
    peko 

#### Jisho CLI
    ji, 字

#### EXA
    ls             - exa
    la             - exa --all
    ll             - exa -l + icons + no user
    l1, l2, l3     - exa with tree different levels

## HELIX Editor Bindings
### MOTIONS
    KEY                     DESCRIPTION                          COMMAND                        
    h, Left	                Move left	                           move_char_left                 
    j, Down                 Move down                            move_line_down
    k, Up	                  Move up	                             move_line_up                   
    l, Right                Move right                           move_char_right
    w	                      Move next word start	               move_next_word_start           
    b	                      Move previous word start	           move_prev_word_start
    e	                      Move next word end	                 move_next_word_end             
    W	                      Move next WORD start	               move_next_long_word_start
    B	                      Move previous WORD start	           move_prev_long_word_start      
    E	                      Move next WORD end	                 move_next_long_word_end
    t	                      Find 'till next char	               find_till_char                 
    f	                      Find next char	                     find_next_char
    T	                      Find 'till previous char	           till_prev_char                 
    F	                      Find previous char	                 find_prev_char
    G	                      Go to line number <n>	               goto_line                      
    Alt-.	                  Repeat last motion (f, t or m)	     repeat_last_motion
    Home	                  Move to the start of the line	       goto_line_start                
    End	                    Move to the end of the line	         goto_line_end
    Ctrl-b,                 PageUp	Move page up	               page_up                        
    Ctrl-f,                 PageDown	Move page down	           page_down
    Ctrl-u	                Move half page up	                   half_page_up                   
    Ctrl-d	                Move half page down	                 half_page_down
    Ctrl-i	                Jump forward on the jumplist	       jump_forward                   
    Ctrl-o	                Jump backward on the jumplist	       jump_backward
    Ctrl-s	                Save the current selection jumplist	 save_selection

### CHANGING TEXT
    r	                      Replace with a character	replace                                    
    R	                      Replace with yanked text	replace_with_yanked
    ~	                      Switch case of the selected text	switch_case                        
    i`	                    Set the selected text to lower case	switch_to_lowercase
    Alt-`                   Set the selected text to upper case	switch_to_uppercase              
    i                       Insert before selection	insert_mode
    a	                      Insert after selection (append)	append_mode                          
    I	                      Insert at the start of the line	insert_at_line_start
    A	                      Insert at the end of the line	insert_at_line_end                     
    o	                      Open new line below selection	open_below
    O	                      Open new line above selection	open_above                             
    .	                      Repeat last insert	N/A
    u	                      Undo change	undo                                                     
    U	                      Redo change	redo
    Alt-u	                  Move backward in history	earlier                                    
    Alt-U	                  Move forward in history	later
    y	                      Yank selection	yank                                                 
    p	                      Paste after selection	paste_after
    P	                      Paste before selection	paste_before                                 
    "                       "reg"	Select a register to yank to or paste from	select_register
    ">"	                    Indent selection	indent                                             
    "<"	                    Unindent selection	unindent
    =	                      Format selection (currently nonfunctional/disabled) (LSP)	format_selections
    d	                      Delete selection	delete_selection                                   
    Alt-d	                  Delete selection, without yanking	delete_selection_noyank
    c	                      Change selection (delete and enter insert mode)	change_selection     
    Alt-c	                  Change selection (delete and enter insert mode, without yanking)	change_selection_noyank
    Ctrl-a	                Increment object (number) under cursor	increment                    
    Ctrl-x	                Decrement object (number) under cursor	decrement

    Q	                      Start/stop macro recording to the selected register (experimental)	record_macro
    q	                      Play back a recorded macro from the selected register (experimental)	replay_macro

### SHELL
    |	                      Pipe each selection through shell command, replacing with output	                  shell_pipe
    Alt-|	                  Pipe each selection into shell command, ignoring output	                            shell_pipe_to
    !	                      Run shell command, inserting output before each selection                           shell_insert_output
    Alt-!	                  Run shell command, appending output after each selection	                          shell_append_output
    $	                      Pipe each selection into shell command, keep selections where command returned 0	  shell_keep_pipe  

### SELECTIONS MANIPULATION
    s	                      Select all regex matches inside selections                            select_regex
    S	                      Split selection into subselections on regex matches	                  split_selection
    Alt-s	                  Split selection on newlines	                                          split_selection_on_newline	                     
    &                       Align selection in columns	                                          align_selections
    _	                      Trim whitespace from the selection	                                  trim_selections
    ;	                      Collapse selection onto a single cursor	                              collapse_selection
    Alt-;	                  Flip selection cursor and anchor	                                    flip_selections
    Alt-:	                  Ensures the selection is in forward direction	                        ensure_selections_forward
    ,	                      Keep only the primary selection	                                      keep_primary_selection
    Alt-,	                  Remove the primary selection	                                        remove_primary_selection
    C	                      Copy selection onto the next line (Add cursor below)	                copy_selection_on_next_line
    Alt-C	                  Copy selection onto the previous line (Add cursor above)	            copy_selection_on_prev_line
    (	                      Rotate main selection backward	                                      rotate_selections_backward
    )	                      Rotate main selection forward	                                        rotate_selections_forward
    Alt-(	                  Rotate selection contents backward	                                  rotate_selection_contents_backward
    Alt-)	                  Rotate selection contents forward	                                    rotate_selection_contents_forward
    %	                      Select entire file	                                                  select_all
    x	                      Select current line, if already selected, extend to next line	        extend_line_below
    X	                      Extend selection to line bounds (line-wise selection)	                extend_to_line_bounds
    Alt-x	                  Shrink selection to line bounds (line-wise selection)	                shrink_to_line_bounds
    J	                      Join lines inside selection	                                          join_selections
    Alt-J	                  Join lines inside selection and select space	                        join_selections_space
    K	                      Keep selections matching the regex	                                  keep_selections
    Alt-K	                  Remove selections matching the regex	                                remove_selections
    Ctrl-c	                Comment/uncomment the selections	                                    toggle_comments
    Alt-o,                  Alt-up	Expand selection to parent syntax node (TS)	                  expand_selection
    Alt-i, Alt-down	        Shrink syntax tree object selection (TS)	                            shrink_selection
    Alt-p, Alt-left	        Select previous sibling node in syntax tree (TS)	                    select_prev_sibling
    Alt-n, Alt-right	      Select next sibling node in syntax tree (TS)	                        select_next_sibling




 ### SEARCH

    /	                        Search for regex pattern	                                           search
    ?	                        Search for previous pattern	                                         rsearch
    n	                        Select next search match	                                           search_next
    N	                        Select previous search match	                                       search_prev
    "*"	                      Use current selection as the search pattern	                         search_selection

### MODES
    v	                        Enter select (extend) mode	            select_mode                  
    g	                        Enter goto mode	
    m	                        Enter match mode	                                                   
    :	                        Enter command mode	                    command_mode
    z	                        Enter view mode	                                                     
    Z	                        Enter sticky view mode	
    Ctrl-w	                  Enter window mode	                                                   
    Space	                    Enter space mode	


### VIEW MODE type v in normal mode
    z, c	                    Vertically center the line	                align_view_center      
    t	                        Align the line to the top of the screen	    align_view_top
    b	                        Align the line to the bottom of the screen	align_view_bottom      
    m	                        Align the line to the middle of the screen (horizontally)	align_view_middle
    j,down	                  Scroll the view downwards	                  scroll_down            
    k, up	                    Scroll the view upwards	                    scroll_up
    Ctrl-f,                   PageDown	Move page down	                  page_down              
    Ctrl-b,                   PageUp	Move page up	                      page_up
    Ctrl-d	                  Move half page down	                        half_page_down         
    Ctrl-u	                  Move half page up	                          half_page_up

### GOTO MODE type g in normal mode

    g	           Go to line number "n" else start of file	          goto_file_start            
    e	           Go to the end of the file	                        goto_last_line
    f	           Go to files in the selection	                      goto_file                  
    h	           Go to the start of the line	                      goto_line_start
    l	           Go to the end of the line	                        goto_line_end              
    s	           Go to first non-whitespace character of the line	  goto_first_nonwhitespace
    t	           Go to the top of the screen	                      goto_window_top            
    c	           Go to the middle of the screen	                    goto_window_center
    b	           Go to the bottom of the screen	                    goto_window_bottom         
    d	           Go to definition (LSP)	                            goto_definition
    y	           Go to type definition (LSP)	                      goto_type_definition       
    r	           Go to references (LSP)	                            goto_reference
    i	           Go to implementation (LSP)	                        goto_implementation        
    a	           Go to the last accessed/alternate file	            goto_last_accessed_file
    m	           Go to the last modified/alternate file	            goto_last_modified_file    
    n	           Go to next buffer	                                goto_next_buffer
    p	           Go to previous buffer	                            goto_previous_buffer       
    .	           Go to last modification in current file	          goto_last_modification


### MATCH MODE type m in normal mode

    m	            Goto matching bracket (TS)	                        match_brackets
    s <char>	    Surround current selection with <char>	            surround_add
    r <from><to>	Replace surround character <from> with <to>	        surround_replace
    d <char>	    Delete surround character <char>	                  surround_delete
    a <object>	  Select around textobject	                          select_textobject_around
    i <object>	  Select inside textobject	                          select_textobject_inner


### WINDOW MODE

    w, Ctrl-w	        Switch to next window	                                rotate_view        
    v, Ctrl-v	        Vertical right split	                                vsplit
    s, Ctrl-s	        Horizontal bottom split	                              hsplit             
    f	                Go to files in the selection in horizontal splits	    goto_file          
    F	                Go to files in the selection in vertical splits	      goto_file          
    h, Ctrl-h, Left	  Move to left split	                                  jump_view_left     
    j, Ctrl-j, Down	  Move to split below	                                  jump_view_down     
    k, Ctrl-k, Up	    Move to split above	                                  jump_view_up       
    l, Ctrl-l, Right	Move to right split	                                  jump_view_right    
    q, Ctrl-q	        Close current window	                                wclose             
    o, Ctrl-o	        Only keep the current window, closing all the others	wonly              
    H	                Swap window to the left	                              swap_view_left     
    J	                Swap window downwards	                                swap_view_down     
    K	                Swap window upwards	                                  swap_view_up       
    L	                Swap window to the right	                            swap_view_right

### SPACE MODE
Global search displays results in a fuzzy picker, use Space + ' to bring it back up after opening a file.

    f	                Open file picker	                                    file_picker
    F	                Open file picker at current working directory	        file_picker_in_current_directory
    b	                Open buffer picker	                                  buffer_picker
    j	                Open jumplist picker	                                jumplist_picker
    k	                Show documentation for item under cursor in a popup (LSP)	hover
    s	                Open document symbol picker (LSP)	                    symbol_picker
    S	                Open workspace symbol picker (LSP)	                  workspace_symbol_picker
    d	                Open document diagnostics picker (LSP)	              diagnostics_picker
    D	                Open workspace diagnostics picker (LSP)	              workspace_diagnostics_picker
    r	                Rename symbol (LSP)	                                  rename_symbol
    a	                Apply code action (LSP)	                              code_action
    '	                Open last fuzzy picker	                              last_picker
    w	                Enter window mode	
    p	                Paste system clipboard after selections	              paste_clipboard_after
    P	                Paste system clipboard before selections	            paste_clipboard_before
    y	                Join and yank selections to clipboard	                yank_joined_to_clipboard
    Y	                Yank main selection to clipboard	                    yank_main_selection_to_clipboard
    R	                Replace selections by clipboard contents	            replace_selections_with_clipboard
    /	                Global search in workspace folder	                    global_search
    ?	                Open command palette	                                command_palette


### POP - UP

    Displays documentation for item under cursor.
    Ctrl-u	          Scroll up            Ctrl-d	        Scroll down

### UNIMPAIRED 

    [d	                Go to previous diagnostic (LSP)	            goto_prev_diag        
    ]d	                Go to next diagnostic (LSP)	                goto_next_diag
    [D	                Go to first diagnostic in document (LSP)	  goto_first_diag       
    ]D	                Go to last diagnostic in document (LSP)	    goto_last_diag
    ]f	                Go to next function (TS)	                  goto_next_function    
    [f	                Go to previous function (TS)	              goto_prev_function
    ]t	                Go to next type definition (TS)	            goto_next_class       
    [t	                Go to previous type definition (TS)	        goto_prev_class
    ]a	                Go to next argument/parameter (TS)	        goto_next_parameter   
    [a	                Go to previous argument/parameter (TS)	    goto_prev_parameter
    ]c	                Go to next comment (TS)	                    goto_next_comment     
    [c	                Go to previous comment (TS)	                goto_prev_comment
    ]T	                Go to next test (TS)	                      goto_next_test        
    ]T	                Go to previous test (TS)	                  goto_prev_test
    ]p	                Go to next paragraph	                      goto_next_paragraph   
    [p	                Go to previous paragraph	                  goto_prev_paragraph
    ]g	                Go to next change	                          goto_next_change      
    [g	                Go to previous change	                      goto_prev_change
    ]G	                Go to first change	                        goto_first_change     
    [G	                Go to last change	                          goto_last_change
    [Space	            Add newline above	                          add_newline_above     
    ]Space	            Add newline below	                          add_newline_below

### INSERT MODE

    Escape	                  Switch to normal mode	            normal_mode            
    Ctrl-s	                  Commit undo checkpoint	          commit_undo_checkpoint
    Ctrl-x	                  Autocomplete	                    completion             
    Ctrl-r	                  Insert a register content	        insert_register
    Ctrl-w, Alt-Backspace	    Delete previous word	            delete_word_backward   
    Alt-d, Alt-Delete	        Delete next word	                delete_word_forward
    Ctrl-u	                  Delete to start of line	          kill_to_line_start     
    Ctrl-k	                  Delete to end of line	            kill_to_line_end
    Ctrl-h,                   Backspace	Delete previous char	  delete_char_backward   
    Ctrl-d,                   Delete	Delete next char	        delete_char_forward
    Ctrl-j,                   Enter	Insert new line	            insert_newline


### PICKER 
    Shift-Tab, Up, Ctrl-p	    Previous entry        
    Tab, Down, Ctrl-n	        Next entry
    PageUp, Ctrl-u	          Page up               
    PageDown, Ctrl-d	        Page down
    Home	                    Go to first entry     
    End	                      Go to last entry
    Enter	                    Open selected         
    Ctrl-s	                  Open horizontally
    Ctrl-v	                  Open vertically       
    Ctrl-t	                  Toggle preview
    Escape, Ctrl-c	          Close picker

### PROMPT
    Escape, Ctrl-c	                                 Close prompt                    
    Alt-b, Ctrl-Left	                               Backward a word
    Ctrl-b, Left	                                   Backward a char                 
    Alt-f, Ctrl-Right        	                       Forward a word
    Ctrl-f, Right	                                   Forward a char                  
    Ctrl-e, End	                                     Move prompt end
    Ctrl-a, Home	                                   Move prompt start               
    Ctrl-w, Alt-Backspace, Ctrl-Backspace	Delete     previous word
    Alt-d, Alt-Delete, Ctrl-Delete                   Delete next word                
    Ctrl-u	                                         Delete to start of line
    Ctrl-k	                                         Delete to end of line           
    Backspace, Ctrl-h	                               Delete previous char
    Delete, Ctrl-d	                                 Delete next char                
    Ctrl-s	                                         Insert a word under doc cursor, may be changed to Ctrl-r Ctrl-w later
    Ctrl-p, Up	                                     Select previous history         
    Ctrl-n, Down	                                   Select next history
    Ctrl-r	                                         Insert the content of the register selected by following input char
    Tab	                                             Select next completion item     
    BackTab	                                         Select previous completion item
    Enter	                                           Open selected

## ZELLIJ

### LOCKED MODE
    bind "Ctrl l" { SwitchToMode "Tmux"; }
        
### NORMAL MODE    
    // use normal for scripts

### TMUX MODE    
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
    bind "Esc" { SwitchToMode "Tmux"; }
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
    bind "Alt e" { TogglePaneEmbedOrFloating; SwitchToMode "Tmux"; }  
    bind "Alt s" { ToggleActiveSyncTab; SwitchToMode "Tmux"; } /// WHAT DOES IT DO????yc
        
    bind "Alt p" { SwitchToMode "RenamePane"; PaneNameInput 0;}
    bind "Alt t" { SwitchToMode "RenameTab"; TabNameInput 0; }
        
### Scroll Menu
    
    bind "Esc" { SwitchToMode "Tmux"; }
    bind "e" { EditScrollback; SwitchToMode "Tmux"; }
    bind "s" { SwitchToMode "EnterSearch"; SearchInput 0; }
    bind "b" { ScrollToBottom; SwitchToMode "Tmux"; }
    bind "j" { ScrollDown; }
    bind "k" { ScrollUp; }
    bind "l" { PageScrollDown; }
    bind "h" { PageScrollUp; }
    bind "d" { HalfPageScrollDown; }        
    bind "u" { HalfPageScrollUp; }

### Search Menu
    bind "Esc" { SwitchToMode "Tmux"; }
    bind "b" { ScrollToBottom; SwitchToMode "Tmux"; }
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
        bind "Enter" { SwitchToMode "Tmux"; }
        bind "Esc" { UndoRenameTab; SwitchToMode "Tab"; }
    
####    renamepane 
        bind "Enter" { SwitchToMode "Tmux"; }
        bind "Esc" { UndoRenamePane; SwitchToMode "Pane"; }

### Shared bindings 
    #### shared_except "locked" 
        bind "Ctrl l" { SwitchToMode "Locked"; }
        bind "Ctrl q" { Quit; }
    
    #### shared_except "tmux" "locked" 
        bind "Enter" "Esc" { SwitchToMode "Tmux"; }
    
    #### shared_except "search" "locked" 
        bind "Alt `" { SwitchToMode "Search"; }
    
    #### shared_except "scroll" "locked" 
        bind "Alt [" { SwitchToMode "Scroll"; }

    #### shared_except "session" "locked" 
         bind "Alt ]" { SwitchToMode "Session"; }
    































































