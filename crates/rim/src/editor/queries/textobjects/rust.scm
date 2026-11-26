(function_item body: (_) @function.inside) @function.around
(closure_expression body: (_) @function.inside) @function.around
(struct_item body: (_) @class.inside) @class.around
(enum_item body: (_) @class.inside) @class.around
(union_item body: (_) @class.inside) @class.around
(trait_item body: (_) @class.inside) @class.around
(impl_item body: (_) @class.inside) @class.around
(parameters (_) @parameter.inside @parameter.around)
(arguments (_) @parameter.inside @parameter.around)
