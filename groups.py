#!/usr/bin/env python3
#
import random, math # Inicialmente importamos os dois modulos

# Agora iremos ler a lista com o nome dos estudantes.
# O número de estudantes é o comprimento da lista definida
# pelo método .readlines()

file = open("estudantes.txt")

estudantes_lista = file.readlines()
quantidade_estudantes = len(estudantes_lista)

assuntos = int(input("Quantos assuntos serão apresentados? \n => "))

minimo_estudantes_grupo = math.floor(quantidade_estudantes / assuntos)
excedente_estudantes = quantidade_estudantes % minimo_estudantes_grupo

if excedente_estudantes == 0:
    print(f'''Temos {quantidade_estudantes} estudantes divididos em
        => {assuntos - excedente_estudantes} grupos com {minimo_estudantes_grupo} estudantes''')
else:
    print(f'''Temos {quantidade_estudantes} divididos em
        => {assuntos - excedente_estudantes} grupos com {minimo_estudantes_grupo} estudantes
        => {excedente_estudantes} grupos com {minimo_estudantes_grupo + 1} estudantes\n''')

# Agora criaremos um conjunto de listas (set) vazias igual ao número de assuntos
# nas quais adicionaremos os estudantes.
conjunto_grupos = []
for n in range(assuntos):
    conjunto_grupos.append([])

# Também criaremos uma lista dos estudantes ordenada alfabeticamente -- Use dictionary
ordem_estudantes = list(range(quantidade_estudantes))

# Considero esse shuffle apenas para maximizar a 'entropia'
for n in range(quantidade_estudantes):
    random.shuffle(ordem_estudantes)


while len(ordem_estudantes) > 0:
    for n in range(assuntos):
        random.shuffle(ordem_estudantes)
        if len(ordem_estudantes) > 0:
            conjunto_grupos[n].append(ordem_estudantes.pop())
        else:
            break

# Com os grupos formados, agora podemos apresentar quem são os estudantes
for n in range(assuntos):
    print(f"\n# Grupo {n + 1}:")
    conjunto_grupos[n].sort()
    for m in range(len(conjunto_grupos[n])):
        print(f"{conjunto_grupos[n][m] + 1} :: {estudantes_lista[conjunto_grupos[n][m]][:-1]}")
