--[[
1) Para fazer um bolo são necessários 350ml de leite (0,350 Litro).
Faça um programa que leia do teclado a quantidade de bolos que devem
ser feitos e o programa deve mostrar quantos litros de leite são
necessários para fazê-los.
--]]

print("Digite a quantidade de bolos:")
leite  = io.read("*n")

print("Litros de leite necessarios: ", math.ceil(0.35*leite))