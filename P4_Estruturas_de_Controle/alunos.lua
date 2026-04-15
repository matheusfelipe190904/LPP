--[[
Faça um programa que leia alunos do teclado e guarde em um array
○ Reveja as funções “io.read”, “tonumber”, etc.
● Cada aluno possui: matricula (string), nome, idade
● Matrícula igual a “0” termina a leitura
● Exiba a maior idade, menor idade e a média das idades
● Exiba todos os alunos, ordenados por nome
○ Utilize o algoritmo “selection sort” com um array auxiliar
○ A função “table.remove” pode ajudar
]]

local alunos = {}
local count = 1
local sum = 0
local maior, menor

while true do
    alunos[count] = {}

    print("Matricula:")
    alunos[count].matricula = io.read("*l")

    if alunos[count].matricula == "0" then
        alunos[count] = nil
        break
    end

    print("Nome:")
    alunos[count].nome = io.read("*l")

    print("Idade:")
    alunos[count].idade = tonumber(io.read("*l"))

    if count == 1 then
        maior = alunos[count].idade
        menor = alunos[count].idade
    else
        if alunos[count].idade > maior then
            maior = alunos[count].idade
        end
        if alunos[count].idade < menor then
            menor = alunos[count].idade
        end
    end

    sum = sum + alunos[count].idade
    count = count + 1
end

local total = count - 1

print("Maior idade:", maior)
print("Menor idade:", menor)
print("Media:", sum / total)

local ordenado = {}
local copia = {}

-- copiar alunos
for i = 1, #alunos do
    copia[i] = alunos[i]
end

-- selection sort
while #copia > 0 do
    local menorIndex = 1

    for i = 2, #copia do
        if copia[i].nome < copia[menorIndex].nome then
            menorIndex = i
        end
    end

    table.insert(ordenado, copia[menorIndex])
    table.remove(copia, menorIndex)
end

for i = 1, #ordenado do
    print(string.format("Aluno: %s", ordenado[i].nome))
    print(string.format("Matricula: %s", ordenado[i].matricula))
    print(string.format("Idade: %d", ordenado[i].idade))
    print("-------------------------")
end