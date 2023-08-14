; inherits: ruby
; https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/ruby

; keywords
("class" (#set! "priority" 101)) @custom.define 
("module" (#set! "priority" 101)) @custom.define 
("def" (#set! "priority" 101)) @custom.define 

; parts of class & module definition
(class name: (constant) @custom.define)
(superclass (#set! "priority" 101)) @custom.define 
(module name: (constant) @custom.define (#set! "priority" 101))

(block_parameters (identifier) @custom.noDefine (#set! "priority" 101))
(block_parameter (identifier) @custom.noDefine (#set! "priority" 101))
