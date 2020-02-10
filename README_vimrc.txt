You can find a full list of added/removed keybindings at the end of the file

I heavily recommend reading this file in its entirety, as some changes may not be to your liking.
After reading through, I suggest viewing the .vimrc file in order to understand how to
enable/disable settings to best meet your needs. I hope this comes in handy and makes vim much more 
pleasant to use for development!

ChangeLog - 
	-vim now opens in insert mode

	-set color scheme to elflord

	-files now show line numbers

	-enabled snytax highlighting in real time
		exact commands - 
			'syntax enable'
		This is the line causing some text

	-can show command line in-file (supports compiling and running while in file)

	-show the line the cursor is on with line-long underscore
	
	-show matching parens/brackets/braces with a highlight
	
	-when searching, now shows partial matches as well
	
	-uses "smartcase" - including a capital changes search to case sensitive
	
	-set to highlight search matches 
	
	-set to inherit the previous line's indentation
	
	-vim now asks confirmation to close unsaved file
	
	-disabled swap file creation
	
	-ignores created swap files when opening a file
	
	-only redraws screen when necessary (since the VM can be slow)
	
	-added visual autocomplete for a command menu
	
	-enabled text wrapping (at 120 chars on a line)
	
	-set linewidth to be 120 chars
	
	-set a visualbell instead of an audible bell
	
	-enabled mouse navigation inside vim
	
	-tab is not replaced by spaces now
	
	-tabs are now 4 chars****
		this is to improve space efficiency, nesting with tab=8 spaces gets
		cluttered fast
	
	-adds a red column at 120 chars for lines that grow too long
	
	-enable folding to collapse large  tab-indented blocks
		-all lines open unfolded
		-folds based on lines as indented or more indented than currently selected
		-max fold nesting is 10
		-fold keymapping was remapped, now is 'za' when in normal mode
	
	-changed beginning of line keymap to B in normal mode
	
	-changed end of line keymap to E in normal mode
	
	-removed $ and ^ keymapping

	-added keymapping to show last inserted text
		- in normal mode press 'gV'[in order, press and hold g-shift-v]

	-added keymapping to get out of insert mode
		-in insert mode press 'jk' to get out**
	
	-added keymapping to get into insert mode
		-in normal mode, press 'jk' to enter into insert mode**

		**if you must enter text with the string 'jk', youll need to 
		enter with the following keystrokes 
			j <right_arrow_key> k

	-if GundoToggle is installed, map command to ',u' in normal mode
	
	-enabled session saving with ',s' or entering ':mksession' in the 
		in-file command line
		- to re-open a session, use:
		'vim -S'


**Using this vimrc
	to add it into you VM, copy the .vimrc file into the home directory
	path = ~/.vimrc
	
	to open your vimrc (if you do not have one opening will create a new file called .vimrc)

	issue command:
	$ vim ~/.vimrc


	Please familiarize yourself with the file. I included some commands that are disabled by default
		(EG spellcheck)
	the comment character is the double quote - "
	to enable lines, delete the preceding double quote
	to disable lines, add in a preceding double quote

	DO NOT ADD OR REMOVE ANY LINES UNTIL YOU ARE CERTAIN OF THEIR FUNCTION

****Disclaimer****
I have been using and updating this vimrc for a while. I find it works well for most programming uses.
Still, there are limitations. The only issue affecting functionality I have found is when creating
makefiles. Because tab widths were changed from 8 characters to 4 characters, makefile recipes must
now begin with 2 tab characters instead of 1. 

EX: (new)

all: $DEPENDENCIES
<tab><tab>$COMMAND

EX: (old)
all: $DEPENDENCIES
<tab>$COMMAND


Helpful but not included plugins
	- SuperTab - allows for tab-autocomplete
	- 

Standard Vim Cheat Sheet (does not include changes)
	Normal Mode (aka command mode):
		-After highlighting text (now doable with cursor)
			'y' - yank the line, analagous to copy
			'#yy' - replace # with a number, yank that many lines past cursor
			'p' - place the yanked lines, analagous to paste
			'?' - begins a search query
				After a search, 'N' advances to next instance
			'%s/<query>/<replacement>/g' - find and replace 
			'%s/<query>/<replacement>/gc' - find and replace with confirm
			'`' - move to last edit
			'V' - highlight entire line
			'v' - highlight single character

	Vim Editor Commands(issue a ':' in normal mode to begin):
		':' - begins a command
			followed by:
				'e' - edit the file. Re-Edits the current file when 
					modified outside of the existing vim window
				'a' - append text at end of cursor [count] times
				'A' - append text after end of line [count] times
			



KEYBINDINGS: (+ means added, - means removed)
	+ 'B'  - navigate cursor to beginning of line
	- '^'  - removed OEM keybind for beginning of line
	+ 'E'  - navigate cursor to end of line
	- '$'  - removed OEM keybind for end of line
	+ 'za' - fold all lines on same or deeper continuous indentation
			(IE entirety of for/while loop)
	+ 'gV' - issued g->shift->V - highlight last inserted text
	+ 'jk' - added to get into/out of insert mode
			note i still functions to enter insert mode
			note <esc> still functions for leaving insert mode
	+ ',s' - added to save a session. To open from cmd line, issue 'vim -S'
	+ ',u' - Super-undo - View edits tree with GundoToggle
		this is only applicable if user has the Gundo plugin added
		the vimrc works regardless of the plugin's presence, however
		without Gundo, the ',u' command will not work

