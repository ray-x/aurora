## aurora

<img width="1318" alt="aurora" src="https://user-images.githubusercontent.com/1681295/185092393-4ebcee95-e60f-438b-9847-1af6743746b3.png">

A vivid 24-bit dark theme for vim/neovim. Highly configurable and cook your own color highlight.
Good supports for popular languages and vim plugins, handcrafted support for LSP, Treesitter.

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

### Plugins explicitly styled

- coc
- ale
- vim-clap
- lsp/nvim-lsp
- signify
- gitgutter
- nvim lsp diagnostics.
- git-fugitive
- fzf
- telescope
- blankline
- gitsigns
- treesitter

You can change/add syntax highlight. Feel free to fork or make a PR.

To install:

```vim
call dein#add('ray-x/aurora')  " for dein user

Plug 'ray-x/aurora'      " for Plug user

set termguicolors            " 24 bit color
let g:aurora_italic = 1     " italic
let g:aurora_transparent = 1     " transparent
let g:aurora_bold = 1     " bold

colorscheme aurora
```

### lua setup

A lua version is provided, if the neovim version is higher than 0.6.x, lua script will be loaded automatically. The lua
version will be much faster as it using native API `vim.api.nvim_set_hl()` My tests shows loading the theme 5000 times took 3s, which means 0.6ms loading time. The vim version normally 15ms startup time.

```lua

#### Howto update the theme:

This project is based on [Estilo](http://estilo.jacoborus.codes/).
Estilo allow you to define color palettes and syntax highlight and then generate .vim file for you.

To update the color, edit the yml file, and run:

```bash
npm install -g estilo
yarn render
copy colors/aurora.vim ~/.vim/plugged/aurora/colors/aurora.vim

```

Generate lua script:

```bash
cat ../colors/aurora.vim  | awk -f aurora.awk > aurora.lua
```

And manually update the aurora.vim to call aurora.lua (estilo will not do it for you).

color palettes file is in
`aurora/estilo/palettes/` folder
and syntax file in `aurora/estilo/syntax/` folder.

#### fast startup time
On my intel 11 i7 xps, loading time is 2ms on average.

#### Show case

- color palettes, more than 100 pre-defined color:
  ![vim color palettes](https://github.com/ray-x/files/blob/master/img/aurora/colorpalettes.jpg?raw=true)

- syntax color highlight:
  <img width="1318" alt="aurora3" src="https://user-images.githubusercontent.com/1681295/185093748-ccf096b3-4362-4ce7-9b89-03fac86c6e29.png">

- sidebar
<img width="902" alt="image" src="https://user-images.githubusercontent.com/1681295/175231905-82df4e4b-a508-4bb8-b878-9f0029643005.png">

- color curl underline, better search highlight(only highlight bg and keep current fg color of the search text) on the right side:

![vim undercurl and search hl for aurora](https://github.com/ray-x/files/blob/master/img/aurora/undercurl_searchhl.jpg?raw=true)
