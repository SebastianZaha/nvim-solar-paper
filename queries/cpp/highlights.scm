; inherits: cpp

; keywords
("namespace") @custom.define (#set! "priority" 105)

(function_definition
   (attribute_declaration)? @custom.define (#set! "priority" 105) 
   (storage_class_specifier)? @custom.define (#set! "priority" 105) 
   (type_qualifier)? @custom.define (#set! "priority" 105) 
   type: _ @custom.define (#set! "priority" 105)
   declarator: (_ (_)* @custom.define) @custom.define (#set! "priority" 105))
