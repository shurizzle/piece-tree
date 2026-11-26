(function_definition body: (_) @function.inside) @function.around
(lambda body: (_) @function.inside) @function.around
(class_definition body: (_) @class.inside) @class.around
(parameters (_) @parameter.inside @parameter.around)
(lambda_parameters (_) @parameter.inside @parameter.around)
(argument_list (_) @parameter.inside @parameter.around)
