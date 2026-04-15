--[[
Crie a “classe” Point que recebe “x” e “y” na sua construção
● Ela também deve conter os métodos getX(), getY() e distance(p)
]]


local function Point(x, y)

    local state = {
        x = x,
        y = y
    }

    local obj = {}

    -- Método getX: retorna a coordenada x do ponto
    obj.getX = function()
        return state.x
    end

    -- Método getY: retorna a coordenada y do ponto
    obj.getY = function()
        return state.y
    end

    -- Método distance: calcula a distância euclidiana entre
    -- este ponto (self) e outro ponto p passado como parâmetro
    -- Fórmula: sqrt((x2-x1)² + (y2-y1)²)
    obj.distance = function(p)
        local dx = p.getX() - state.x  -- diferença em x
        local dy = p.getY() - state.y  -- diferença em y
        return math.sqrt(dx^2 + dy^2)
    end

    return obj
end

print("=== Calculadora de Pontos ===")
print("\nDigite as coordenadas do Ponto 1:")
io.write("X1: ")
local x1 = io.read("*n")
io.write("Y1: ")
local y1 = io.read("*n")

print("\nDigite as coordenadas do Ponto 2:")
io.write("X2: ")
local x2 = io.read("*n")
io.write("Y2: ")
local y2 = io.read("*n")


-- Cria dois objetos Point com os valores digitados
local p1 = Point(x1, y1)
local p2 = Point(x2, y2)

print("\n=== Resultados ===")
print(string.format("Ponto 1: (%.2f, %.2f)", p1.getX(), p1.getY()))
print(string.format("Ponto 2: (%.2f, %.2f)", p2.getX(), p2.getY()))
print(string.format("Distancia: %.2f", p1.distance(p2)))