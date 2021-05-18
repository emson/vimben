# VimBen

My personal Vim installation, which is basically a customised fork of the [Janus Project](https://github.com/carlhuda/janus/).


## Installation

### Installing Vim from source on OSX

Use Mercural to download the Vim source:

* <http://www.vim.org/mercurial.php>

Now configure Vim. Please note that if you have tried to configure Vim
previously you will need to do a clean:

    make distclean

Configuration and Compilation:

    ./configure CFLAGS="-arch x86_64" CXXFLAGS="-arch x86_64" \
    --with-features=huge  --enable-multibyte --with-tlib=ncurses \
    --enable-pythoninterp --enable-rubyinterp

    make
    make install

### VimBen set up

To install VimBen, please use this [automatic
installer](https://github.com/emson/vimben/blob/master/bootstrap.sh)
, which backups up any Vim files found in your home folder and installs
VimBen.

	curl -Lo- https://raw.github.com/emson/vimben/master/bootstrap.sh | bash

## Useful Commands

Switch to command line: `Ctrl-z`
Switch Vim to foreground: `fg`
Move forward one screen: `Ctrl-F`
Move backward one screen: `Ctrl-B`
Jump to the last insertion point: `gi` or two back ticks
Jump to insertion point history: `g;` or `g,`
Jump list: `:jumps`
Record a macro into register 'a': `qa`
Stop recording the macro: `q`
Get from register 'a': `@a`
Quit all, including open windows: `:qall`
Show history of commands: `q:`
Resize a horizontal split window:

    Ctrl-w +
    10Ctrl-w -
    :res +10

Verticle split to fullscreen: `Ctrl-w |`
Resize a verticle split window:

    Ctrl-w <
    Ctrl-w >
    :30winc <

Horizontal split to fullscreen: `Ctrl-w _`
Equal width split panes: `Ctrl-w =`
Create a new window pane: `Ctrl-w n`
Quit a window pane without quitting the buffer: `Ctrl-w q`
Rotate a window pane to a different position: `Ctrl-w r`
Column select with mouse: `Ctrl + Alt + Cmd  then mouse click`
Column select `Ctrl-v`
Replace the text in a column:

    Select a column append new text to the end of each column,
    then select the original column and delete it.
    1. block-select (with Ctrl-V + cursor movement)
    2. A3<Esc>
    3. re-select with gv
    4. delete with d or <Del> k

Use vim bindings in the console (<http://blog.siyelo.com/vim-tips-part-i>):

    $ set -o vi
    or back
    $ set -o emacs

## Modifications

~~Added a simple 'Dark Room' toggle: `F1`  ~~
~~<http://paulrouget.com/e/vimdarkroom/>~~


## Plugins & Submodules

Plugins are generally added using Git Submodules. Please add and remove them like so:

###Git Submodules

#### Add a submodule

Add a submodule, into your directory:

    git submodule add MY_URL MY_PATH
    e.g.
    .vim$ git submodule add https://github.com/mattn/emmet-vim.git ./vimben/vim/bundle/emmet-vim

#### Updating submodules

Updating the submodules:

    git submodule update --init

#### Remove a submodule

To remove a submodule you need to:

* Delete the relevant lines from the .gitmodules file.
* Delete the relevant section from .git/config.
* Run `git rm --cached path_to_submodule`
	**NB: (no trailing slash).**
* Delete the unwanted directories:
	`rm -rf .vim/vimben/vim/bundle/my_module`
* Commit the now untracked submodule files.

### Pathogen
<https://github.com/tpope/vim-pathogen>
Pathogen is used to load all the plugins. Note that plugins are loaded
from the `bundle` directory.
To install a new plugin try and use a Git Submodule and put this module
into the bundle directory. e.g.

    git submodule add git@github.com:emson/some_plugin.git
vimben/vim/bundle/some_plugin


### Vivid Chalk
<https://github.com/tpope/vim-vividchalk>
The Vivid Chalk color scheme.

### Color Sampler Pack
<http://www.vim.org/scripts/script.php?script_id=625>
Contains all the usual Vim color scheme suspects.

### Vim ir_black

<https://github.com/wgibbs/vim-irblack>

Added the IRBlack color scheme.

    colorscheme: ir_black


### Vim Rails

<https://github.com/tpope/vim-rails>

* `:Rfind my_model` - will find models and related components, just keep
  pressing Tab
* `gf` - go to file under the cursor
* `:Rake` - run RSpec tests from a spec file
* `:Rgenerate migration add_foo_to_bar` - run script/generate command

From a model file:

* `:Runittest` - run unit tests
* `:RVunittest` - run unit tests in a verticle split
* `:RSunittest` - run unit tests in a horizontal split
* `:RTunittest` - run unit tests in new tab
* `Rcontroller` -
* `Rfunctionaltest` -


### Vim Surround

<https://github.com/tpope/vim-surround>

`"Hello world!"` to `'Hello world!'` - `cs"'`
`'Hello world!'` to `<q>Hello world</q>` - `cs'<q>`
`"Hello world!"` to `Hello world!` - `ds"`
`"Wrap whole line in parentheses"` - `yss"`
`<em>Hello</em> world!` - `ysiw<em>`

### Vim Commentary

<https://github.com/tpope/vim-commentary>

* `\\\` - comment out a line
* `3\\\` - comment out 3 lines
* `\\ap` - comment out a paragraph
* `vv\\` - comment out a line in visual mode

### Buffer Explorer

<http://vim.sourceforge.net/scripts/script.php?script_id=42>

* `\be` normal open
* `TAB` is also mapped to `\be`
* `\bs` horizontal split open
* `\bv` vertical split open
* `t` or `Shift Enter` open in tab
* `d` deletes the buffer

### NerdTree

<https://github.com/scrooloose/nerdtree>

### Syntastic

<https://github.com/scrooloose/syntastic>

### Vim EndWise

<https://github.com/tpope/vim-endwise.git>

This plugin automatically adds the `end` statement when you create new
`class, module, def` definitions.
Note that you will need to have the following settings to ensure that
the `end` is appropriately indented.

    filetype on
    filetype indent on
    filetype plugin on

### CtrlP

<https://github.com/kien/ctrlp.vim>

Full path fuzzy file, buffer, mru and tag finder for Vim.

Press `<c-p>` or run `:CtrlP` to invoke CtrlP in find file mode.
Or run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in buffer or MRU mode.

Once CtrlP is open:

* Press `<c-f>` and `<c-b>` to switch between find file, buffer, and MRU file modes.
* Press `<c-d>` to switch to filename only search instead of full path.
* Press `<F5>` to purge the cache for the current directory and get new files.
* Use `*` or `|` in the prompt to submit the string as a Vim’s regexp pattern.
* Or press `<c-r>` to switch to regexp mode.
* End the input string with a colon `:` followed by a command to execute after opening the file.  e.g. abc:45 will open the file matched the pattern and jump to line 45.
* Submit two dots `..` as the input string to go backward the directory tree by 1 level.
* Use `<c-y>` to create a new file and its parent dirs.
* Use `<c-z>` to mark/unmark files and `<c-o>` to open them.

### Snipmate

<https://github.com/msanders/snipmate.vim>

Just press **Tab** after typing a snippet keyword e.g.

	cla [TAB]
	def [TAB]
	defs [TAB]
	defmm [TAB]
	: [TAB]
	beg [TAB]
	req [TAB]
	case [TAB]
	if [TAB]
	r [TAB]
	w [TAB]
	rw [TAB]
	app [TAB]
	ea [TAB]
	ead [TAB]
	eak [TAB]
	patfh [TAB]
	tas [TAB]


Note the Ruby snippets can be found here:

	MY_VIM_DIR/vimben/vim/bundle/snipmate.vim/snippets/ruby.snippets

Also I have added a new custom snippets directory which is where you
should add all your snippets:

    MY_VIM_DIR/vimben/vim/snippets

### Fugitive

<https://github.com/tpope/vim-fugitive>

Git for vim:

    :Gedit
    :Gsplit
    :Gvsplit
    :Gtabedit
    :Gstatus
    :Gcommit
    :Gmove
    :Gremove
    :Gblame
    :Ggrep
    :Gbrowse
    :Git


### Exuberant CTags
<https://github.com/vim-scripts/ctags.vim>

Install Exuberant CTags:
	brew install ctags-exuberant

Build your tag index file against your source:

    ctags -R --exclude=.git --exclude=log *

Creates a tags file.  Add it to your **.gitignore**

**Commands**

	Ctrl ]
	Ctrl t
    :tag some_method_name
    :tag /validates_presence_*

* You can use the 'tag' ex command. For example, the command ':tag <tagname>' will jump to the tag named <tagname>.
* You can position the cursor over a tag name and then press Ctrl-].
* You can visually select a text and then press Ctrl-] to jump to the tag matching the selected text.
* You can click on the tag name using the left mouse button, while pressing the <Ctrl> key.
* You can press the g key and then click on the tag name using the left mouse button.
* You can use the 'stag' ex command, to open the tag in a new window. For example, the command ':stag func1' will open the func1 definition in a new window.
* You can position the cursor over a tag name and then press Ctrl-W ]. This will open the tag location in a new window.

**Effortless ctags with Git**

<http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html>

Use Git to create your Ctags.


**References**

* <http://vim.wikia.com/wiki/Browsing_programs_with_tags>
* <http://paintincode.blogspot.com/2011/04/mac-vim-setup-for-python-programming.html>
* <http://www.vim.org/scripts/script.php?script_id=610>
* <http://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/>
* <http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html>

## Align

<https://github.com/vim-scripts/Align.git>

Align your statements on equals, comments or some other declaration.
So to align along the '=':

    something = anther
    s = b
    forty = twenty

Visually select and `:Align =`

    something = anther
    s         = b
    forty     = twenty

Note that you can add multiple separators: `:Align = # , (`

## ack.vim

<https://github.com/mileszs/ack.vim.git>

Add Ack search functionality to vim:

    :Ack [options] {pattern} [{directory}]

In the quick fix window:

    o    to open (same as enter)
    go   to preview file (open but maintain focus on ack.vim results)
    t    to open in new tab
    T    to open in new tab silently
    v    to open in vertical split
    gv   to open in vertical split silently
    q    to close the quickfix window

## Numbers.vim
<https://github.com/myusuf3/numbers.vim>

In navigation mode the current cursor is set at 0 making it easy to
work out how many lines to delete etc.
In insert mode the line numbers revert to normal line numbers.

## Vim Arduino Ino

<https://github.com/jplaut/vim-arduino-ino>

Ensure **ino** is installed: <http://inotool.org/>
Using Python: `pip install ino`

Install Picocom for serial control with Arduino: `brew install picocom`
Picocom commands can be run from `ino` e.g.:

    ino serial # start serial monitor

    Ctrl+a Ctrl+x # to quit serial monitor
    Ctrl+a Ctrl+a Ctrl+x # to quit serial monitor from tmux


Vim Arduino Ino can be run using the following keys:

    <Leader>ac - Compile the current sketch.
    <Leader>ad - Compile and deploy the current sketch.
    <Leader>as - Open a serial port in screen.


Also install `arduino-vim` syntax higlighting: <http://www.vim.org/scripts/script.php?script_id=2654>
Put the downloaded syntax file into your `/bundle` directory e.g.

    bundle/vim-arduino-syntax/syntax/arduino.vim


More notes: <http://fousa.be/blog/vim-arduino>

## Vim-jst
<https://github.com/briancollins/vim-jst.git>

A Vim plugin for highlighting and indenting JST/EJS syntax.

## Vim-Coffee-Script
<https://github.com/kchmck/vim-coffee-script/>

This project adds CoffeeScript support to the vim editor. It handles syntax, indenting, compiling, and more. Also included is an eco syntax and support for CoffeeScript in Haml and HTML.

The full signature of the command is:

    :[silent] CoffeeMake[!] [COFFEE-OPTIONS]...

By default, CoffeeMake shows all compiler output and jumps to the first line reported as an error by coffee:

    :CoffeeMake


## Rainbow-parentheses.vim
<https://github.com/kien/rainbow_parentheses.vim.git>

Plugin to highlight nested parentheses differently.
Commands:

    :RainbowParenthesesToggle       " Toggle it on/off
    :RainbowParenthesesLoadRound    " (), the default when toggling
    :RainbowParenthesesLoadSquare   " []
    :RainbowParenthesesLoadBraces   " {}
    :RainbowParenthesesLoadChevrons " <>


## Vim Puppet
<https://github.com/rodjek/vim-puppet/>
Add syntax highlighting etc. for puppet.


## Emmet-vim (ZenCoding)
* ~~<https://github.com/mattn/zencoding-vim>~~
* <https://github.com/mattn/emmet-vim>

A simple set of commands for generating HTML.

For more examples see:

* <http://coding.smashingmagazine.com/2009/11/21/zen-coding-a-new-way-to-write-html-code/>
* <https://raw.github.com/mattn/zencoding-vim/master/TUTORIAL>

In `index.html` type:

    html:5

Then type "," (Ctrl + y + ','), you should see:

    <!DOCTYPE HTML>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        _
    </body>
    </html

You can also apply HTML to existing text, by using visual select to select this text, from the bottom type `v[`:

    test1
    test2
    test3

Now type `Ctrl+y+,` and type in your zencode tag: `ul>li*` - Remember the `*` as this will apply the text to each  `<li></li>` element. Producting:

    <ul>
      <li>test1</li>
      <li>test2</li>
      <li>test3</li>
    </ul>

## Vim-Elixir

<https://github.com/elixir-lang/vim-elixir>

Elixir support for vim. This plugin also adds support for Elixir's templating language, EEx.

Features included so far:

    Syntax highlighting for Elixir and EEx
    Filetype detection for .ex, .exs and .eex files
    Automatic indentation



## Vim-Airline

Lean & mean status/tabline for vim that's light as air.

* <https://github.com/bling/vim-airline>


## Vim-Multiple-cursors

Edit text in multiple places by positioning multiple cursors on your text.

* <https://github.com/terryma/vim-multiple-cursors>

In `normal mode` find a piece of text and hit `Ctrl-n`, this will highlight the current word in `visual mode` pressing `Ctrl-n` again will highlight the next occurrence of that word, placing the virtual cursor at the end of  that word.

`Ctrl-p` will remove the current  virtual cursor and go back to the previous cursor location

`Ctrl-x` will remove the current virtual cursor and will jump forward to the next selection.


## Dash.vim

Access Dash API documents from the Vim.

* <https://github.com/rizzatti/dash.vim>

    :Dash

    Will search for the word under the cursor in the docset corresponding to
    the current filetype.

    :Dash printf

    Will search for the word 'printf' in the docset corresponding to the
    current filetype.

    :Dash setTimeout javascript

    Will search for the word 'setTimeout' in the 'javascript' docset.

    Tip: You can use <Tab> to complete the keyword names.

    :Dash!

    Will search for the word under the cursor in all docsets (globally).

    :Dash! func

    Will search for 'func' in all docsets.


## Vim-Obsession
<https://github.com/tpope/vim-obsession>

Used by Tmux-resurrect to save the current Vim session


## Pending plugins

Additional plugins that may be useful:

* tComments
* vim-rake
  <https://github.com/tpope/vim-rake>

## Unsure of but potential plugins

### TaskPaper

<https://github.com/davidoc/taskpaper.vim.git>

Key mappings:

    \td     Mark task as done
    \tx     Mark task as cancelled
    \tc     Show all tasks with context under cursor
    \tp     Fold all projects
    \ta     Show all projects and tasks


## References

* [Vim commands cheatsheet](http://bullium.com/support/vim.html)
* [Seven habits of effective text editing](http://www.moolenaar.net/habits.html)
* [Vim Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
* [VimBits](http://vimbits.com)
* [Best Vim tips](http://rayninfo.co.uk/vimtips.html)

