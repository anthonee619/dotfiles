require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
-- npm install -g typescript typescript-language-server
require'lspconfig'.dockerls.setup{ on_attach=require'completion'.on_attach }
-- npm i -g dockerfile-language-server-nodejs
require'lspconfig'.html.setup{ on_attach=require'completion'.on_attach }
-- npm install -g vscode-html-languageserver-bin
require'lspconfig'.cssls.setup{ on_attach=require'completion'.on_attach }
-- npm install -g vscode-css-languageserver-bin
require'lspconfig'.jedi_language_server.setup{ on_attach=require'completion'.on_attach }
-- pip install -U jedi-language-server
