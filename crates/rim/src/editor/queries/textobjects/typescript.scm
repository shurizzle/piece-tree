; Added to javascript.scm: a signature has no body (overloads, `declare`, interfaces, abstract methods).
(function_signature) @function.around
(method_signature) @function.around
(abstract_method_signature) @function.around
(abstract_class_declaration body: (_) @class.inside) @class.around
(interface_declaration body: (_) @class.inside) @class.around
(enum_declaration body: (_) @class.inside) @class.around
