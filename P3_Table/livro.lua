--[[
Atividade
● Crie uma estrutura para armazenar os dados de um livro
○ O livro possui título, autores (array), preço, edição e editora
○ A editora possui nome, telefone e CNPJ
○ Depois, imprima o título e o preço
--]]
local livro = {}
livro["titulo"] = "Harry Potter"
livro["autores"] = {}
livro["autores"][1] = "J. K. Rowlling"
livro["autores"][2] = "M. F. Vieira"
livro["preco"] = 100
livro["editora"] = {}
livro["editora"]["nome"] = "Leitura"
livro["editora"]["telefone"] = "62989562314"
livro["editora"]["cnpj"] = "0351560001-89"

print(livro["titulo"])
print(livro["preco"])

--[[
Crie 5 livros e coloque-os em um array
○ O livro possui título, autores (array), preço, edição e editora
○ A editora possui nome, telefone e CNPJ
]]

livro = {
    {
        titulo = 'Harry Potter',
        autores = {'J. K. Rowlling', 'M. F. Vieira'},
        preco = 119.99,
        edicao = 5,
        editora = {
            nome = 'Leitura',
            telefone = '62984762309',
            cnpj = '1236540001-00'
        }
    },
    {
        titulo = 'Turma da Monica',
        autores = {'Mauricio de Souza', 'M. F. Vieira'},
        preco = 59.99,
        edicao = 8,
        editora = {
            nome = 'Livraria',
            telefone = '62999452303',
            cnpj = '6541230001-00'
        }
    },
    {
        titulo = 'Percy Jackson',
        autores = {'Rick Riordan', 'G. L. Borba'},
        preco = 150,
        edicao = 3,
        editora = {
            nome = 'Leitura',
            telefone = '62984762309',
            cnpj = '1236540001-00'
        }
    },
    {
        titulo = 'Pequeno Principe',
        autores = {'Antoine de Saint-Exupery', 'M. F. Vieira', 'Bruno Oliveira'},
        preco = 180,
        edicao = 12,
        editora = {
            nome = 'Livraria',
            telefone = '62999452303',
            cnpj = '6541230001-00'
        }
    },
    {
        titulo = 'Crepusculo',
        autores = {'Stephenie Meyer', 'M. F. Vieira', 'G. L. Borba'},
        preco = 19.99,
        edicao = 1,
        editora = {
            nome = 'Editatorial',
            telefone = '62985990954',
            cnpj = '1237890001-00'
        }
    }
}

for i = 1, #livro do
    print(string.format("Titulo do Livro %d: %s", i ,livro[i].titulo))
    for j = 1, #livro[i].autores do
        print(string.format("Autor %d do livro %d: %s", j, i, livro[i].autores[j]))
    end
    print(string.format("Preco do livro %d: %d", i, livro[i].preco))
    print(string.format("Edicao do livro %d: %d", i, livro[i].edicao))
    print(string.format("Nome da Editora do livro %d: %s", i, livro[i].editora.nome))
    print(string.format("Telefone da Editora do livro %d: %s", i, livro[i].editora.telefone))
    print(string.format("CNPJ da Editora do livro %d: %s", i, livro[i].editora.cnpj))
end