# vimeko
My VIM Configuration

## Installation

Install Amix's VIMRC Awesome version
* [AMIX/VIMRC](https://github.com/amix/vimrc)
```
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

Replace the *~/.vim_runtime* content with all the files in this REPO

## Autocomplete

Ctags is required for autocomplete.

Download * [Exuberant Tags](http://ctags.sourceforge.net/)

Make sure that ctags is in the *$PATH* variable

To use, navigate to the root of your proyect and exec:
```
ctags -R --languages=<your language, for example 'c'>
``` 
If you need *help*, type:
```
ctags --help
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
