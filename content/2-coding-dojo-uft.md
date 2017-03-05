Title: 2° Coding Dojo, como foi o evento?
Date: 2015-04-30 19:00
Tags: coding dojo, extreme programming, tdd, pair programming, baby steps, uft, caccomp, ciência da computacao
Category: Geral
Slug: 2-coding-dojo-uft
Author: Vinícius Aires Barros
Email:  viniciusaires7@gmail.com
Github: viniciusaires
Twitter: dev_vini
Facebook: viniciusa1r3s
Linkedin: viniciusaires7

O 2° Coding Dojo aconteceu no dia 30/04/2015 na <a target="_blank" href="http://www.uft.edu.br">Universidade Federal do Tocantins</a> (UFT) campus Palmas, com tema na linguagem de programação <a target="_blank" href="http://pt.wikipedia.org/wiki/Python">Python</a>.
O evento foi organizado pela parceria entre o <a target="_blank" href="http://dojoto.github.io">DojoTO</a>, <a target="_blank" href="https://www.facebook.com/caccompuft">CACCOMP</a> (Centro Acadêmico de Ciência da Computação).

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/27-03-organizacao-coding-dojo.jpg"/>
</p>

##Problema abordado

O problema proposto foi outro clássico os [Happy Numbers](http://c2.com/cgi/wiki?FizzBuzzTest), descrito no enunciado abaixo!

Números Felizes  =)

> Para saber se um número é feliz, você deve obter o quadrado de cada dígito deste número, em seguida você faz a soma desses resultados. A seguir o mesmo procedimento deve ser feito com o valor resultante desta soma. Se ao repetir o procedimento diversas vezes obtivermos o valor 1, o número inicial é considerado feliz.
Tomamos o 7, que é um número feliz:

7² = 49<br/>
4² + 9² = 97<br/>
9² + 7² = 130<br/>
1² + 3² + 0² = 10<br/>
1² + 0² = 1<br/>

Podemos observar nesse exemplo que os números 49, 97, 130 e 10 também são felizes. Existem infinitos números felizes.

E um número triste? Como sabemos que um número não será feliz?
Desenvolva um programa que determine se um número é feliz ou triste.

Retirado do site Dojo Puzzles:
<a href="http://dojopuzzles.com/problemas/exibe/numeros-felizes">http://dojopuzzles.com/problemas/exibe/numeros-felizes</a>

##Participantes

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/coding-dojo-30-04-2015.jpg"/>
</p>

Para mais fotos clique [aqui](https://goo.gl/6PNhiA)

##Código Fonte

O algoritmo foi codificado com auxílo da IDE [Pycharm](https://www.jetbrains.com/pycharm/) pelo fato de sua simplicidade e facilidade de visualização com o seu modo de apresentação.

###Classe happy_numbers.py

```python
def happy(n):
    if n <= 0:
        return False

    resultado = n

    if resultado == 1:
        return True
    lista = []
    while resultado != 1:
        lista.append(resultado)  # guarda todos os resultados já encontrados
        resultado = str(resultado)
        soma = 0
        for letra in resultado:
            soma = soma + int(letra) ** 2  # onde a elevação ao quadrado

        resultado = soma

        print(resultado)

        if (resultado in lista):  # isso já estará na lista
            print(str(n) + " não é feliz!")
            return False

    if resultado == 1:
        print(str(n) + " é feliz!")

    return True


lista = [1, 7, 10, 13, 19, 23, 28, 31, 32, 44, 49, 68, 70, 79, 82, 86, 91, 94, 97, 100, 103, 109, 129, 130, 133, 139,
         167, 176, 188, 190, 192, 193, 203, 208, 219, 226, 230, 236, 239, 262, 263, 280, 291, 293, 301, 302, 310, 313,
         319, 320, 326, 329, 331, 338, 356, 362, 365, 367, 368, 376, 379, 383, 386, 391, 392, 397, 404, 409, 440, 446,
         464, 469, 478, 487, 490, 496]

numeros = range(lista[-1])
nao_felizes = [n for n in numeros if n not in lista]

assert all([happy2(num) for num in lista])
assert not all([happy2(num) for num in nao_felizes])
```

###Classe happy_number.py refatorado

```python
def soma_dos_quadrados(numero):
    minhastring = str(numero)
    list = []
    for digito in minhastring:
        list.append(int(digito) ** 2)
    return sum(list)


def happy(numero):
    result = numero
    box = []
    while result != 1 and result not in box:
        box.append(result)
        result = somadosquadrados(result)
    return result == 1

lista = [1, 7, 10, 13, 19, 23, 28, 31, 32, 44, 49, 68, 70, 79, 82, 86, 91, 94, 97, 100, 103, 109, 129, 130, 133, 139,
         167, 176, 188, 190, 192, 193, 203, 208, 219, 226, 230, 236, 239, 262, 263, 280, 291, 293, 301, 302, 310, 313,
         319, 320, 326, 329, 331, 338, 356, 362, 365, 367, 368, 376, 379, 383, 386, 391, 392, 397, 404, 409, 440, 446,
         464, 469, 478, 487, 490, 496]

numeros = range(lista[-1])
nao_felizes = [n for n in numeros if n not in lista]

assert all([happy2(num) for num in lista])
assert not all([happy2(num) for num in nao_felizes])
```

<a href="https://github.com/dojoto/arquivos-dojos/tree/master/30_04_2015/happynumbers">Link para o repositório no GitHub</a>

FeedBack
------------

Ao final do Dojo tivemos um momento de feedback, onde foram apontados os pontos positivos e negativos ocorridos durante o evento.

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/30-04-coding-dojo-feedback.jpg"/>
</p>
