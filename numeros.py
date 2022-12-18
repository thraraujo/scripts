#!/usr/bin/env python3
import random

Jogo = [set([]),set([])]

i = 0

while i in [0,1]:
    while len(Jogo[i]) < 6:
        a = random.randint(1,60)
        if a not in Jogo[0] and a not in Jogo[1]:
            Jogo[i].add(a)
    print(f"Jogo {i + 1}: {sorted(Jogo[i])}")
    i += 1
