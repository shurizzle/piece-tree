; `= default` and `= delete` have no body.
(function_definition) @function.around
(function_definition body: (_) @function.inside)
(lambda_expression body: (_) @function.inside) @function.around
(struct_specifier body: (_) @class.inside) @class.around
(class_specifier body: (_) @class.inside) @class.around
(union_specifier body: (_) @class.inside) @class.around
(enum_specifier body: (_) @class.inside) @class.around
(parameter_list (_) @parameter.inside @parameter.around)
(argument_list (_) @parameter.inside @parameter.around)
