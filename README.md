#VimBen

My personal Vim installation, which is basically a customised fork of the [Janus Project](https://github.com/carlhuda/janus/).

## Installation

To install VimBen, please use our [automatic
installer](https://github.com/emson/vimben/blob/master/bootstrap.sh)
, which backups up any Vim files found in your home folder and installs
VimBen.

```bash
$ curl -Lo- https://raw.github.com/emson/vimben/master/bootstrap.sh | bash
```

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

### Vim Rails

<https://github.com/tpope/vim-rails>

### Vim Surround

<https://github.com/tpope/vim-surround>

### Vim Commentary

<https://github.com/tpope/vim-commentary>

### Buffer Explorer

<http://vim.sourceforge.net/scripts/script.php?script_id=42>

* `\be` normal open
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
    autocmd BufEnter * lcd %:p:h

### Codepath

<https://github.com/lucapette/codepath.vim>

Functionality that creates a project root path. This is useful for
plugins like Command-T and NERDtree which will use the directory of the
current file by default.

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


### TaskPaper

<https://github.com/davidoc/taskpaper.vim.git>

Key mappings:

    \td     Mark task as done
    \tx     Mark task as cancelled
    \tc     Show all tasks with context under cursor
    \tp     Fold all projects
    \ta     Show all projects and tasks

