# Solar Paper

A theme for nvim inspired by the great
[vim-paper](https://github.com/yorickpeterse/vim-paper) and 
[grey](https://github.com/yorickpeterse/nvim-grey) by Yorick Peterse,
changing the main background and foreground colors to Solarized-inspired ones.

Other differences to the aforementioned themes:
- bold is not used, I find it too jarring in the terminal
- even less syntax highlighting in general, except for method and type definitions - kept
  as a structural hint when browsing code

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
