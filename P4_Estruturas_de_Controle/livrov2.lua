--[[
Seja o array de livros da atividade anterior, imprima o nome do livro e
o nome da editora dos livros com preço maior que R$50
a) Utilizando “while”
b) Utilizando “for” numérico
c) Utilizando “for” iterador
]]

local livro = {
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

local i = 1
while i < 6 do
    if livro[i].preco > 50 then
        print(string.format("Nome do livro: %s", livro[i].titulo))
        print(string.format("Nome da Editora do livro: %s", livro[i].editora.nome))
    end
    i = i + 1
end

for i = 1, #livro do
    if livro[i].preco > 50 then
        print(string.format("Nome do livro: %s", livro[i].titulo))
        print(string.format("Nome da Editora do livro: %s", livro[i].editora.nome))
    end
end

for i in pairs(livro) do
    if livro[i].preco > 50 then
        print(string.format("Nome do livro: %s", livro[i].titulo))
        print(string.format("Nome da Editora do livro: %s", livro[i].editora.nome))
    end
end