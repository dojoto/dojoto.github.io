Title: 3° Coding Dojo, como foi o evento?
Date: 2015-12-19 20:00
Tags: coding dojo, extreme programming, tdd, pair programming, baby steps, uft, caccomp, ciência da computacao
Category: Geral
Slug: 3-coding-dojo-uft
Author: Vinícius Aires Barros
Email:  viniciusaires7@gmail.com
Github: viniciusaires
Twitter: dev_vini
Facebook: viniciusa1r3s
Linkedin: viniciusaires7

<p align="center">
  <img src="https://raw.githubusercontent.com/dojoto/dojoto.github.io/pelican/content/images/viniciusaires7/3-dojo-banner.jpg"/>
</p>

O 3° Coding Dojo aconteceu no dia 18/12/2015 na <a target="_blank" href="http://www.uft.edu.br">Universidade Federal do Tocantins</a> (UFT) campus Palmas, com tema na linguagem de programação <a target="_blank" href="https://pt.wikipedia.org/wiki/C%2B%2B">C++</a>.
O evento foi organizado pela parceria entre o <a target="_blank" href="http://dojoto.github.io">DojoTO</a>, <a target="_blank" href="https://www.facebook.com/caccompuft">CACCOMP</a> (Centro Acadêmico de Ciência da Computação).

##Problema abordado

O problema proposto foi o [3n+1](https://uva.onlinejudge.org/index.php?option=com_onlinejudge&Itemid=8&page=show_problem&problem=36) problema que foi retirado do livro [Programming Challenges](http://www.programming-challenges.com/) do autor [Skiena](http://www3.cs.stonybrook.edu/~skiena/), livro esse que é base de estudos de algoritmos e referência usada para competições de programação como por exemplo a [Maratona de Programação](http://maratona.ime.usp.br/) e a [Olimpíada Brasileira de Informática - OBI](http://olimpiada.ic.unicamp.br/).

Descrição do problema 3n+1

*Arquivo pdf com definição do problema

<iframe src="https://drive.google.com/file/d/0BwOxXBIiBMq4ZXpUdzFVNEhfYkU/preview" width="100%" height="480"></iframe>

##Participantes

Contamos com a participação de 9 pessoas como a maioria do pessoal já estava viajando por conta do final do semestre tivemos poucas pessoas presentes, mas ainda sim o Coding Dojo foi legal!

<p align="center">
  <img src="https://raw.githubusercontent.com/dojoto/dojoto.github.io/pelican/content/images/viniciusaires7/coding-dojo-18-12-2015.jpg"/>
</p>

Para mais fotos acessem o [link](https://goo.gl/photos/RoLwwdiiWEd857Un6)

###Nomes dos participantes

- [Paulo Canedo C Rodrigues](https://www.facebook.com/paulocanedo)
- [Bruno Pereira de Carvalho](https://www.facebook.com/bruno.p.carvalho.754)
- [Cézanne Alves M. Motta](https://www.facebook.com/cezanne.alves)
- [Fabio C. Barrionuevo da Luz](https://www.facebook.com/fabiocbarrionuevo)
- [Felipe Sousa Barbosa](https://www.facebook.com/felipe.sousabarbosa.3)
- [Carlos Motta](https://www.facebook.com/carloscasca)
- [Lendel Sanches](https://www.facebook.com/Lendelsanches)
- [Vinícius Aires Barros](https://www.facebook.com/viniciusa1r3s)
- [Wandro Beckman Maciel](https://www.facebook.com/wandrobeckman)

##Ambiente de desenvolvimento

Segue abaixo as ferramentas e ambientes de desenvolvimento utilizados no 3° Coding Dojo:

- Sistema Operacional [Ubuntu - Linux](http://www.ubuntu.com)
- Compilador [GNU Compiler Collection - G++](https://gcc.gnu.org/)
- Editor de texto [Atom.io](http://www.atom.io)
- Gerenciador de Compilação [CMAKE](https://cmake.org/)
- Ferramenta de testes [Google Test](https://github.com/google/googletest)

Obs: Para instalar o ambiente de testes com o framework do Google para testes em c++ segue o [link](http://www.eriksmistad.no/getting-started-with-google-test-on-ubuntu/) com o tutorial de instalação!

##Código Fonte

Segue abaixo a implementação feita durante o Coding Dojo:

```c++
/*File: main.cpp*/
#include <gtest/gtest.h>
#include <iostream>
#include <cmath>
#include <sstream>

//Classe Base ResolveProblema
class ResolveProblema {

public:
  ResolveProblema();
  int tresN(int);
  int iteracao(int, int);
  std::string result(int,int);

};

//Construtor
ResolveProblema::ResolveProblema(){}

//Metodo Base 3n+1
int ResolveProblema::tresN(int n) {
  int it = 1;
  while (n != 1){
    if(n % 2 == 0){
      n= (n/2);
    }
    else{
      n=(3*n)+1;
    }
    it++;
  }
  return it;
}

//Metodo Interacao para o calculo do maior ciclo definido pelo intervalo i -> j
int ResolveProblema::iteracao(int i,int j){

  int min = std::min(i,j);
  int max = std::max(i,j);
  int maior = 0;

  for(int i = min; i < max; i++) {
    int comprimentoCiclo = tresN(i);
    if(comprimentoCiclo > maior){
      maior = comprimentoCiclo;
    }
  }
  return maior;
}

//Metodo Principal do problema 3n+1
std::string ResolveProblema::result(int i, int j){
  int maior_ciclo = iteracao(i, j);
  std::stringstream ss;
  ss << i << " " << j << " " << maior_ciclo;
  return ss.str();
}

//Metodo de Teste
TEST(INPUT, OUTPUT) {
    ResolveProblema resolve;
    ASSERT_EQ("10 1 20", resolve.result(10, 1));
	ASSERT_EQ("100 200 125", resolve.result(100, 200));
	ASSERT_EQ("201 210 89", resolve.result(201, 210));
	ASSERT_EQ("1000 900 174", resolve.result(1000, 900));
}

//Metodo Main
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
```

Segue o [link](https://github.com/dojoto/arquivos-dojos) para o repositórios com os problemas desenvolvidos durante o Coding Dojo.

##FeedBack Coding Dojo

Segue abaixo a tabela com os pontos positivos e negativos levantados ao final do Coding Dojo:

|Foi Bom|Precisa melhorar|
|---|---|
|Refrigerante|Faltou um especialista na linguagem|
|Maior interatividade|Melhorar modelo do randori|
|Relembrar C++|Data de realização do Dojo (Final de Semestre)|
|Conhecer framework de testes em C++ (Google)||
