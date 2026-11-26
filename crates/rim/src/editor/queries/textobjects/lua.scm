; An empty function has no body node.
(function_declaration) @function.around
(function_declaration body: (_) @function.inside)
(function_definition) @function.around
(function_definition body: (_) @function.inside)
(parameters (_) @parameter.inside @parameter.around)
(arguments (_) @parameter.inside @parameter.around)
