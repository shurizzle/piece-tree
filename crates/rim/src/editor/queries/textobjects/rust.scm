(function_item body: (_) @function.inside) @function.around
; A trait method or an extern function has no body.
(function_signature_item) @function.around
(closure_expression body: (_) @function.inside) @function.around
; Only a struct can have no body (`struct X;`), and then no inside.
(struct_item) @class.around
(struct_item body: (_) @class.inside)
(enum_item body: (_) @class.inside) @class.around
(union_item body: (_) @class.inside) @class.around
(trait_item body: (_) @class.inside) @class.around
(impl_item body: (_) @class.inside) @class.around
(parameters (_) @parameter.inside @parameter.around)
(closure_parameters (_) @parameter.inside @parameter.around)
(arguments (_) @parameter.inside @parameter.around)
