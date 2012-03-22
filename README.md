#VimBen

My personal Vim installation, which is basically a customised fork of the [Janus Project](https://github.com/carlhuda/janus/).


## Installation

To install VimBen, please use this [automatic
installer](https://github.com/emson/vimben/blob/master/bootstrap.sh)
, which backups up any Vim files found in your home folder and installs
VimBen.

```bash
$ curl -Lo- https://raw.github.com/emson/vimben/master/bootstrap.sh | bash
```

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


## Modifications

Added a simple 'Dark Room' toggle: `F1`  
<http://paulrouget.com/e/vimdarkroom/>


## Plugins

Plugins are generally added using Git Submodules. Please add and remove them like so:

**Git Submodules**

Add a submodule:

    git submodule add MY_URL MY_PATH

Updating the submodules:

    git submodule update --init

To remove a submodule you need to:

* Delete the relevant line from the .gitmodules file.
* Delete the relevant section from .git/config.
* Run `git rm --cached path_to_submodule`  
	NB: (no trailing slash).
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

	MY_VIM_DIR/snipmate.vim/snippets/ruby.snippets

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

