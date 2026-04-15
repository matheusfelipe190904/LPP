--[[
Alguns editores de texto possuem a possibilidade de formatar string como
“Palavra Iniciando Com Maiúsculo” (PICM)
● Dada uma string com o nome completo de uma pessoa, faça um
pequeno programa que imprima o nome da pessoa formatado como
PICM
● Assuma nomes com 3 palavras
nome = "pAuLo AnToNiO OliVEirA"
nome = "ANA dos sANtos"
--]]

print("Digite um texto:")
local str = io.read("*l")

str = string.lower(str)

local picm = ""
local maiuscula = true

for i = 1, #str do
    local c = string.sub(str, i, i)

    if maiuscula then
        picm = picm .. string.upper(c)
        maiuscula = false
    else
        picm = picm .. c
    end
    if c == " " then
        maiuscula = true
    end
end

print(picm)