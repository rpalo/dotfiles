(block) @local.scope
(forStmt) @local.scope

(identifier) @local.reference

(assignmentExpr target: (identifier) @local.definition)
(varDeclaration name: (identifier) @local.definition)
