# Personal Cheatsheet for keybindings 

## General 
1. Super + [ ]            OS Interaction DE/WM
2. CTRL + [ ]             Terminal and other Applications
3. ALT + [ ]              Terminal Multiplexer
4. Space +[ ], CTRL+ [ ]  Text Editor 

## GNOME 

Henkan                  FCITX5 Switch Language EN -> JP                             SHIFT + Henkan          Katakana tmp input
FN + Henkan             Switch between Katakana, Halfwidth, fullwidth               SUPER + 1,..,7          Switch Workspaces
SUPER + SHIFT + 1,...,7 MOVE WINDOW to that Workspace                               SUPER + R               Toggle Resize
    SUPER + H,J,K,L     resize                                                        
SUPER + O               Change V-H split                                            SUPER + Mouse drag      change window position
SUPER + M               Window on all Workspaces                                    SUPER + LEFT RIGHT      Switch workspace


## SWAY WINDOW MANAGER

### APPLICATION

SUPER + ENTER           FOOT TERMINAL                                               SUPER + I               Brave-Browser
SUPER + D               Search Menu                                                 SUPER + T               Open Todo list (GNOME ONLY)


## TERMINAL (FOOT Terminal)
SHIFT + Page_Up         Scrollback Up Page                                            SHIFT + Page_Down       Scrollback Down Page
CTRL + Shift C | V      Clipboard Copy Paste                                            CTRL + SHift R          Search

## ZSH
### ALIAS

## HELIX Editor Bindings
### MOTIONS
KEY                     DESCRIPTION                          COMMAND                        KEY            Description                  COMMAND
h, Left	                Move left	                           move_char_left                 j, Down        Move down                    move_line_down
k, Up	                  Move up	                             move_line_up                   l, Right       Move right                   move_char_right
w	                      Move next word start	               move_next_word_start           b	             Move previous word start	    move_prev_word_start
e	                      Move next word end	                 move_next_word_end             W	             Move next WORD start	        move_next_long_word_start
B	                      Move previous WORD start	           move_prev_long_word_start      E	             Move next WORD end	          move_next_long_word_end
t	                      Find 'till next char	               find_till_char                 f	             Find next char	              find_next_char
T	                      Find 'till previous char	           till_prev_char                 F	             Find previous char	          find_prev_char
G	                      Go to line number <n>	               goto_line                      Alt-.	         Repeat last motion (f, t or m)	repeat_last_motion
Home	                  Move to the start of the line	       goto_line_start                End	           Move to the end of the line	goto_line_end
Ctrl-b,                 PageUp	Move page up	               page_up                        Ctrl-f,        PageDown	Move page down	    page_down
Ctrl-u	                Move half page up	                   half_page_up                   Ctrl-d	       Move half page down	        half_page_down
Ctrl-i	                Jump forward on the jumplist	       jump_forward                   Ctrl-o	       Jump backward on the jumplist	jump_backward
Ctrl-s	                Save the current selection to the jumplist	save_selection

### CHANGING TEXT
r	                      Replace with a character	replace                                    R	                      Replace with yanked text	replace_with_yanked
~	                      Switch case of the selected text	switch_case                        ``	                    Set the selected text to lower case	switch_to_lowercase
Alt-`                   Set the selected text to upper case	switch_to_uppercase              i                       Insert before selection	insert_mode
a	                      Insert after selection (append)	append_mode                          I	                      Insert at the start of the line	insert_at_line_start
A	                      Insert at the end of the line	insert_at_line_end                     o	                      Open new line below selection	open_below
O	                      Open new line above selection	open_above                             .	                      Repeat last insert	N/A
u	                      Undo change	undo                                                     U	                      Redo change	redo
Alt-u	                  Move backward in history	earlier                                    Alt-U	                  Move forward in history	later
y	                      Yank selection	yank                                                 p	                      Paste after selection	paste_after
P	                      Paste before selection	paste_before                                 "                       "reg"	Select a register to yank to or paste from	select_register
">"	                    Indent selection	indent                                             "<"	                    Unindent selection	unindent
=	                      Format selection (currently nonfunctional/disabled) (LSP)	format_selections
d	                      Delete selection	delete_selection                                   Alt-d	                  Delete selection, without yanking	delete_selection_noyank
c	                      Change selection (delete and enter insert mode)	change_selection     Alt-c	                  Change selection (delete and enter insert mode, without yanking)	change_selection_noyank
Ctrl-a	                Increment object (number) under cursor	increment                    Ctrl-x	                Decrement object (number) under cursor	decrement

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
v	                        Enter select (extend) mode	            select_mode                  g	                        Enter goto mode	
m	                        Enter match mode	                                                   :	                        Enter command mode	                    command_mode
z	                        Enter view mode	                                                     Z	                        Enter sticky view mode	
Ctrl-w	                  Enter window mode	                                                   Space	                    Enter space mode	


### VIEW MODE type v in normal mode
z, c	                    Vertically center the line	                align_view_center      t	                        Align the line to the top of the screen	    align_view_top
b	                        Align the line to the bottom of the screen	align_view_bottom      m	                        Align the line to the middle of the screen (horizontally)	align_view_middle
j,down	                  Scroll the view downwards	                  scroll_down            k, up	                    Scroll the view upwards	                    scroll_up
Ctrl-f,                   PageDown	Move page down	                  page_down              Ctrl-b,                   PageUp	Move page up	                      page_up
Ctrl-d	                  Move half page down	                        half_page_down         Ctrl-u	                  Move half page up	                          half_page_up

### GOTO MODE type g in normal mode

g	           Go to line number "n" else start of file	          goto_file_start            e	           Go to the end of the file	                        goto_last_line
f	           Go to files in the selection	                      goto_file                  h	           Go to the start of the line	                      goto_line_start
l	           Go to the end of the line	                        goto_line_end              s	           Go to first non-whitespace character of the line	  goto_first_nonwhitespace
t	           Go to the top of the screen	                      goto_window_top            c	           Go to the middle of the screen	                    goto_window_center
b	           Go to the bottom of the screen	                    goto_window_bottom         d	           Go to definition (LSP)	                            goto_definition
y	           Go to type definition (LSP)	                      goto_type_definition       r	           Go to references (LSP)	                            goto_reference
i	           Go to implementation (LSP)	                        goto_implementation        a	           Go to the last accessed/alternate file	            goto_last_accessed_file
m	           Go to the last modified/alternate file	            goto_last_modified_file    n	           Go to next buffer	                                goto_next_buffer
p	           Go to previous buffer	                            goto_previous_buffer       .	           Go to last modification in current file	          goto_last_modification


### MATCH MODE type m in normal mode

m	            Goto matching bracket (TS)	                        match_brackets
s <char>	    Surround current selection with <char>	            surround_add
r <from><to>	Replace surround character <from> with <to>	        surround_replace
d <char>	    Delete surround character <char>	                  surround_delete
a <object>	  Select around textobject	                          select_textobject_around
i <object>	  Select inside textobject	                          select_textobject_inner
















































































