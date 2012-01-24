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


### Pathogen
<https://github.com/tpope/vim-pathogen>

### Vivid Chalk
<https://github.com/tpope/vim-vividchalk>

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



