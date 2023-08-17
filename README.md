# Solar Paper

A theme for nvim inspired by the great
[vim-paper](https://github.com/yorickpeterse/vim-paper) and 
[grey](https://github.com/yorickpeterse/nvim-grey) by Yorick Peterse,
changing the main background and foreground colors to Solarized-inspired ones.

Bold is avoided, I find it too jarring in the terminal.

Syntax highlighting is mostly only done for comments and for method and type definitions
- which are kept as a structural separation hint. This yields a pleasing <i>heading</i> then 
<i>section</i> visual structure.

The method and type definitions are done via Treesitter (with a couple of defaults for the
classic vim syntax highlighting.

LSP syntax tokens are not used, I did not find how to properly implement 
the 'highlights function definition line' requirement. If it is not disabled, it overwrites
treesitter.

To disable in nvim LSP config `on_attach(client, bufno)`: 
`client.server_capabilities.semanticTokensProvider = nil`.


## Screenshots

`TODO`


## Installation

    Plug 'SebastianZaha/nvim-solar-paper'


## Development
  
For treesitter queries and highlight groups, use `:Inspect` and `:InspectTree` in nvim and the 
[tree-sitter query syntax](https://tree-sitter.github.io/tree-sitter/using-parsers#query-syntax).
