# vimeko
My VIM Configuration based on AMIX's Awesome VIMRC

## Installation

Install Amix's VIMRC Awesome version
* [AMIX/VIMRC](https://github.com/amix/vimrc)
```
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

Replace the *~/.vim_runtime* content with all the files in this REPO

## ZSH
If using zsh on OSX (and probably Linux) copy your .zshrc to .zshenv

## GVIM on Windows
I had some trouble getting NeoComplete working on GVIM on Windows. You can use the following copy of GVIM if you also have trouble.
[GVIM 7.4.xx with LUA](https://github.com/atwoz/gvim-win-tags)

## CAPS LOCK MAPPING
It is really useful to map the CAPLOCK key to something else, I prefer to map it to CONTROL (thanks to [larsx2](https://github.com/larsx2)).
Some other people prefer ESC.

**MAC**

Under System Preferences > Keyboard, You have an option to MAP some of the keys. It's really easy.

**WINDOWS**

I used [KeyTweak](http://www.bleepingcomputer.com/download/keytweak/)

**LINUX (UBUNTU)**

I used [Gnome Tweak Tool](https://apps.ubuntu.com/cat/applications/gnome-tweak-tool/)

## Autocomplete

Ctags is required for autocomplete.

Download [Exuberant Tags](http://ctags.sourceforge.net/)

Make sure that ctags is in the *$PATH* variable

**Install Ctags on OSX**
OSX already comes with a version of Ctags but not Exuberant Ctags so we have to make an alias to fix this.
Just run the following 2 commands:
```
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
```

To use, navigate to the root of your proyect and exec:
```
ctags -R --languages=<your language, for example 'c'> --fields=+l 
``` 

EXAMPLE:
```
ctags -R --languages=c --fields=+l --langmap=c:.c.h
ctags -R --exclude=node_modules --fields=+l --languages=javascript
```

If you need *help*, type:
```
ctags --help
```
**Javascript Tags**
If using ctags with javascript, I recommend placing the *.ctags* file I have in the ctags directory in the folder you want to create the tags.

NEW:
I discocered the jsctags node module which I think works ok. You can download it from:

and then add a custom function to your zsh if you are using node:
https://github.com/ramitos/jsctags
```
find . -type f -iregex ".*\.js$" -not -path "./node_modules/*" -exec jsctags {} -f \; | sed '/^$/d' | sort > tags
```

## FONT
Install the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font

## Syntax Highlighting
I use syntastic for syntax hightlighting. Currently I disabled the Checkers for C since I haven't been
able to make it work (because I do embedded C). However it works with javascript and html but you
need to install the checkers.

**Javascript**

Install JSHint and JSXHint
```
npm install -g jshint jsxhint
```

**HTML**

Install Tidy

*MAC*
```
brew update
brew install tidy-html5
```
I already have the Checkers enabled in the config file. Change them if you want to use another one. 

## YouCompleteMe (needs installation)
Requires installation!!! Check the official repo for details

## COLOR CODED (needs installation)
you need to run the following to install color coded
```
git clone https://github.com/jeaye/color_coded ~/.vim_runtime/sources_non_forked/color_coded
cd ~/.vim_runtime/sources_non_forked/color_coded
mkdir build && cd build
cmake ..
make && make install # Compiling with GCC is preferred, ironically
# Clang works on OS X, but has mixed success on Linux and the BSDs

# Cleanup afterward; frees several hundred megabytes
make clean && make clean_clang
```

## Searching (using Ack)
It's possible to search inside all the files in the project (tags file is required) using Ack. 
You need to have Ack installed and in the $PATH variable to be able to use it inside VIM.

To Install ACK do the following:

**MAC** Requires homebrew

```
brew install ack 
```

**LINUX (UBUNTU)**

```
cpan App:Ack
```

**WINDOWS**

First install [Strawberry Perl](http://strawberryperl.com/)

Then just type in the windows CMD Terminal the following:
Make sure you are in C:\ path when executing the following command.
```
cpan -f App::Ack
```

**USAGE**

Simply place the cursor in the word you want to search and type:
```
:Ack
```

**PERL WARNING**
If you get the following perl warning in OSX or LINUX **perl: warning: Setting locale failed**
you can fix it by adding the following to you ~./zshrc and ~/.zshenv
```
export LC_ALL=en_US.UTF-8
```


## Useful Commands
```
guu           : lowercase line
gUU           : uppercase line
~             : invert case (upper->lower; lower->upper) of current character
gf            : open file name under cursor (SUPER)
ga            : display hex, ascii value of character under cursor
g8            : display hex value of utf-8 character under cursor
ggg?G         : rot13 whole file
xp            : swap next two characters around
CTRL-A,CTRL-X : increment, decrement next number on same line as the cursor
CTRL-R=5*5    : insert 25 into text
=             : (re)indent the text on the current line or on the area selected (SUPER)
=%            : (re)indent the current braces { ... }
G=gg          : auto (re)indent entire document
<c-x>         : Autocomplete mode (while in insert)
<c-x><c-l>    : Autocomplete a full line (while in insert mode)
<c-w><c-]>    : Open tag in split window
<
<c-w><c-}>    : Open tag in split without losing original focus
[I            : Searches file for word under cursor and opens Cwind. with results
```

## Markers and moving about
```
'.       : jump to last modification line (SUPER)
`.       : jump to exact spot in last modification line
<C-O>    : retrace your movements in file (backward)
<C-I>    : retrace your movements in file (forward)
:ju(mps) : list of your movements {{help|jump-motions}}
:history : list of all your commands
```

## SURROUND
To use the surround.vim

*Normal mode*
```
ds  : delete a surrounding
cs  : change a surrounding
ys  : add a surrounding
yS  : add a surrounding and place the surrounded text on a new line + indent it
yss : add a surrounding to the whole line
ySs : add a surrounding to the whole line, place it on a new line + indent it
ySS : same as ySs
```

*Visual mode*
```
s   : in visual mode, add a surrounding
S   : in visual mode, add a surrounding but place text on new line + indent it
```

*Insert mode
```
<CTRL-s>                             : in insert mode, add a surrounding
<CTRL-s><CTRL-s>                     : in insert mode, add a new line + surrounding + indent
<CTRL-g>s                            : same as <CTRL-s>
<CTRL-g>S                            : same as <CTRL-s><CTRL-s>
```

## Nerd Tree
File Navigation using the nerdtree plugin
```
,nn     : Opens the Nerd Tree
?       : Nerd Tree commands are there for Reference
```

## Alternate between .c and .h files
This uses the Alternate plugin
```
:A      : Alternate between .c and .h file
```

## Toggle UNDO-TREE
This uses the Undo Tree Plugin
```
,8      : Toggles ON and OFF the Undo Tree
```

## Toggle TagBar
This uses the TagBar plugin (shows current file Tags)
```
,9      : Toggles ON and OFF the TagBar
```

## EASYMOTION
This uses the EasyMotion Plugin (like f in Vimium)
```
,,w           : Jump to the beginning of a word
,,fo          : Jump to a letter o (instead of o, you could use ,,f<any symbol>)
,,<whatever>  : Make your own combos
,,s<whatever> : Make your own combo
```

## ALIGNMENT
This usees de Tabular plugin to align blocks of text
```
:Tab /=             : Aligns a block of text using the = sign
:Tab /:\zs          : Aligns a block of text using the : sign but placing the : after the word
:Tab /<any word>    : Aligns a block of text using <any word> as reference
```
I switched to Easy-Align, now do the following:
```
ga          : Starts easy align
vipga=      : Aligns around the = the visually selected p
gaip=       : Same as above
vipga*=     : Align all occurrences of =
```

## COMMENTING
To comment code.

In Visual Mode
```
gc      : Comments the selected text
```

In Normal Mode
```
gcc     : Comment the current line
gcu     : Uncomment the current line
```
In Insert Mode (/* C Comment Style */)
```
$$      : Adds a /*  */ comment and places cursor inside
$#      : Adds a /*  */ BLOCK Comment and places cursor in the right place
```

## TABS
Using tabs

```
,tn         : Creates a new tab
,tc         : Closes the current tab
,to         : Closes all the tabs except the current one
,<1-5>      : Jumps to the tab number <x>
,0          : Jumos to the last tab
```

## WINDOWS
```
Ctrl + <hjkl>   : Move between windows using hjkl
<c-w> + <HJKL>  : Moves window
```

## Other Mappings
```
,w          : Quick Save file
<space>     : Search
<c-space>   : Sarch backward
```

## Marks
Marks are useful when you want to jump to a specific part of a File or to antother file quickly.
```
m<a-z>      : Create a mark at the current cursor position by the name <a-z>. The scope is only inside the file.
m<A-Z>      : Same as above but the scope is global. You can jump between files using these types of marks.
'<a-zA-z>   : Jump to the marked line and place the cursor at the beginning of the line.
`<a-zA-z>   : Jump to the marked line and place the cursor at the exact mark spot.
```

## HEX and DEC
To convert between HEX and DEC in the editor, place the cursor on the number and use the following commands:
```
:Hex2dec    : Converts from hexadecimal to decimal
:Dec2hex    : Converts from decimal to hexadecimal
```

## ULTISNIP
To use ultisnip with YCM, just start typing a snippet shortcut and once it
displays the options, cycle through them and hit <c-tab> to trigger one. To
cycle between the snippet parts just hit <c-j> and <c-k>. Ultisnip requieres
vim-snippets, you can see the list of available snippets there.
```
<c-s-tab>   : Get a list of options
<c-tab>     : Select snippet
<c-j>       : Cycle through snippet parameters forward
<c-k>       : Cycle through snippet parameters backward
```

## YCM
To use YCM to it's full potential, you need to have certain config files in
the project root. 

For C, add:
.ycm_extra_conf.py

For JS, add:
.tern_project

## Searching, replacing
In Normal Mode
```
<leader>g   :Ag Searching
```
in Visual Mode
```
<leader>gv  :Ag the selected text
<leader>r   :Replace selected text
```
When using Ag to search, you can use cope to cycle through the results.
Once you do a Search, use the following:
```
<leader>cc  :Show results
<leader>n   :Jump to next result
<ledaer>p   :Jump to previous result
```
## Accumulative Yanking & Deleting with repeat
With the Repeatable Yank plugin and with some custom mappings we can
do an accumulative yanking/deleting that can be repeated with .
It works by placing the conents in a custom register and then pasting it.

To do Accumulative yanking:
```
<leader>y   : Always call this first to clear the register and copy the line
gyy         : Copy subsequent lines
gy          : Copy visual selected item
gyiw        : Copy the inner word (works with other commands)
p           : paste everything you copied
```

To do accumulative deleting (useful for moving things around):
```
<leader>R   : Call this first to delete de current line
<leader>rd  : call this after to delete and accumulate more lines
<leader>rp  : Paste everything that was delete.
```

The important thing is that these mappings can be repeated with dot.

## Black Hole deleting
When you want to delete something but you don't want to overwrite what you just
yanked then use the following (it uses the "_ register):
```
<leader>d   : Delete and place on the underscore register
```

## Searching in multiple files easily with CtrlSF Plugin
This requires Ag or Ack but it's the best option I have found so far to search
in multiple files and easily edit the results and move between them.

Once the CtrlSF window is open you can do the following actions:
```
Enter   :Open corresponding file of current line in the window which CtrlSF is launched from.
<C-O>   :Like Enter but open file in a horizontal split window.
t       :Like Enter but open file in a new tab.
p       :Like Enter but open file in a preview window.
O       :Like Enter but always leave CtrlSF window opening.
T       :Like t but focus CtrlSF window instead of new opened tab.
q       :Quit CtrlSF window.
<C-J>   :Move cursor to next match.
<C-K>   :Move cursor to previous match.
```

Custom Mappings:
```
<C-k>f  : Writes CtrlSF in the prompt
<C-k>f  : Writes CtrlSF and places the visually selected text after
<C-k>F  : Same as above but also runs the search
<C-k>n  : Same as the f option but does the search for the word under the cursor
<C-k>p  : Performs a search on the last search pattern used when finding in vim
<C-k>o  : Open CtrlSF window
<C-k>t  : Toggle CtrlSF window
```
