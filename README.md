## aurora

![aurora theme](https://github.com/ray-x/files/blob/master/img/aurora/aurora.jpg?raw=true)

A 24-bit dark theme for vim/neovim. Highly configurable and cook your own color highlight.
Good supports for pupular languages and vim plugins, handcrafted support for LSP, Treesitter.

### Languages explicitly styled

- All Neovim Treesitter highlighted-languages
- C++
- python
- js/ts
- json
- markdown
- yaml
- css
- sql
- golang
- html

### Plugins explicity styled

- coc
- ale
- vim-clap
- lsp/nvim-lsp
- signify
- gitgutter
- nvim lsp diagnostics.
- git-fugitive
- fzf

You can change/add syntax highlight. Feel free to fork or make a PR.

To install:

```vim
call dein#add('ray-x/aurora')  " for dein user

Plug 'ray-x/aurora'      " for Plug user

set termguicolors            " 24 bit color
colorscheme aurora
```

#### Howto updateh the theme:

This project is based on [Estilo](http://estilo.jacoborus.codes/).
Estilo allow you to define color palettes and syntax highlight and then generate .vim file for you.

To update the color, edit the yml file, and run:

```bash
npm install -g estilo
yarn render
copy colors/aurora.vim ~/.vim/plugged/aurora/colors/aurora.vim

```

color palettes file is in
`aurora/estilo/palettes/` folder
and syntax file in `aurora/estilo/syntax/` folder.

#### Show case

- color palettes, more than 100 pre-defined color:
  ![vim color palettes](https://github.com/ray-x/files/blob/master/img/aurora/colorpalettes.jpg?raw=true)

- syntax color highlight:
  ![vim highlight for aurora](https://github.com/ray-x/files/blob/master/img/aurora/syntaxhighlight.jpg?raw=true)

- color curl underline, better search highlight(only highlight bg and keep current fg color of the search text) on the right side:

![vim undercurl and search hl for aurora](https://github.com/ray-x/files/blob/master/img/aurora/undercurl_searchhl.jpg?raw=true)
