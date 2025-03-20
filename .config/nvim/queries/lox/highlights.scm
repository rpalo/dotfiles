[
 "if"
 "else"
 "return"
 "or"
 "and"
 "print"
 "var"
] @keyword

[
 "true"
 "false"
 "nil"
] @constant.builtin

(number) @number
(identifier) @variable
(string) @string

[
 "-"
 "+"
 "/"
 "*"
 "!"
 ">"
 ">="
 "<"
 "<="
 "=="
 "!="
 "="
] @operator

[
 ";"
] @punctuation.delimiter

[
 "("
 ")"
 "{"
 "}"
] @punctuation.bracket

(comment) @comment
