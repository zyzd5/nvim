* update time: 2024/7/24 14:28
# shortcuts
* \<CR> = `Enter`
* \<BS> = `Backspace`
* \<leader> = `Space`
* \<C-xx> = `Ctrl + xx`
* \<D-xx> = `Command + xx`
* \<S-xx> = `Shift + xx`

## mode shortcuts
|mode|func|shortcut|comment|
|-|-|-|-|
|insert|delete word|\<C-BS>/\<D-BS>|vscode like|
|normal|close buffer|\<leader>w|vscode like|
|normal|jump to tag file|\<leader>o|better than default `Ctrl+]`|
|normal|back to tag source file|\<leader>O|better than default `Ctrl+o`|
|normal|paste directly|\<leader>p|sometime better than p|
|normal|select all line|\<leader>va|useful|
|normal|swap with next window|\<leader>s|based on functions.lua|
|normal|fold code toggle|\<leader>[|based on treesitter.nvim, vscode like|
|normal|open fold|\<leader>]|based on treesitter.nvim, vscode like|
|normal|new window in right|\<leader>vs|vertical split|
|normal|move from window up/down/left/right|\<leader>h/j/k/l|very useful|
|n/v|move cursor Home/End|\<leader>;/'|better than original $/^|
|V-line|move line up/down|J/K|copy someone's config, a little bug|
## plugin shortcuts
### code snip
|func|shortcut|comment|
|-|-|-|
|close snip window|\<C-e>|default setting|
|select next item|tab|better than tab confirm|
|select prev item|\<S-tab>|twin for upper|
### lsp
|func|shortcut|comment|
|-|-|-|
|display hover information|K|default but good|
|go to definition|gd|simple word|
### regular plugins
|source|func|shortcut|comment|
|-|-|-|-|
|flash.nvim|flash.jump()|s|super jump|
|flash.nvim|select whole thing on {}|S|honestly too much fancy|
|mini-comment|comment line|\<leader>/|vscode like|
|none-ls|format with lsp|\<leader>gf|viual and '=' could either|
|noice.nvim|dismiss message|\<leader>nd|noice dismiss|
|nvim-telescope|find_files|\<leader>ff|god|
|nvim-telescope|live_grep|\<leader>fg|Great, there's no need to say much|
|nvim-telescope|buffers|\<leader>\<space>|good thinking|
|nvim-telescope|oldfiles|\<leader>fo|always use|
|nvim-tree|TreeToggle|\<leader>e|e means explorer|
