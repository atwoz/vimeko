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

## GVIM on Windows
I had some trouble getting NeoComplete working on GVIM on Windows. You can use the following copy of GVIM if you also have trouble.
[GVIM 7.4.xx with LUA](https://github.com/atwoz/gvim-win-tags)

## Autocomplete

Ctags is required for autocomplete.

Download [Exuberant Tags](http://ctags.sourceforge.net/)

Make sure that ctags is in the *$PATH* variable

To use, navigate to the root of your proyect and exec:
```
ctags -R --languages=<your language, for example 'c'>
``` 
If you need *help*, type:
```
ctags --help
```

## FONT
Install the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font

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
,,w          : Jump to the beginning of a word
,,fo         : Jump to a letter o (instead of o, you could use ,,f<any symbol>)
,,<whatever> : Make your own combos
```

## ALIGNMENT
This usees de Tabular plugin to align blocks of text
```
:Tab /=             : Aligns a block of text using the = sign
:Tab /:\zs          : Aligns a block of text using the : sign but placing the : after the word
:Tab /<any word>    : Aligns a block of text using <any word> as reference
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
```

