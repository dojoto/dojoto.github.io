Title: 1° Piloto Coding Dojo, como foi o evento?
Date: 2015-03-30 8:00
Tags: coding dojo, extreme programming, tdd, pair programming, baby steps, uft, caccomp, ciência da computacao
Category: Geral
Slug: 1-coding-dojo-piloto-uft
Author: Vinícius Aires Barros
Email:  viniciusaires7@gmail.com
Github: viniciusaires
Twitter: dev_vini
Facebook: viniciusa1r3s
Linkedin: viniciusaires7

O 1° Piloto Coding Dojo aconteceu no dia 27/03/2015 na <a target="_blank" href="http://www.uft.edu.br">Universidade Federal do Tocantins</a> (UFT) campus Palmas, com tema na linguagem de programação <a target="_blank" href="http://pt.wikipedia.org/wiki/Java_%28linguagem_de_programa%C3%A7%C3%A3o%29">Java</a> e com o auxílio do
<a target="_blank" href="http://junit.org/">JUnit</a> como ferramenta de teste unitário.
O evento foi organizado pela parceria entre o <a target="_blank" href="http://dojoto.github.io">DojoTO</a>, <a target="_blank" href="https://www.facebook.com/caccompuft">CACCOMP</a> (Centro Acadêmico de Ciência da Computação).

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/27-03-organizacao-coding-dojo.jpg"/>
</p>

##Problema abordado

O problema proposto foi o clássico [FizzBuzz](http://c2.com/cgi/wiki?FizzBuzzTest), descrito no enunciado abaixo!

>Escreva um programa que imprima os números de 1 a 100. Mas para múltiplos de três, em vez do número imprimir "Fizz" e para os múltiplos de cinco imprimir "Buzz". Para os números que são múltiplos de dois três e cinco imprimir "FizzBuzz".

##Participantes

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/foto-1-piloto-coding-dojo.jpg"/>
</p>

Tivemos participação em peso dos alunos de Ciência da Computação UFT, um acadêmico de Eng. Elétrica, a participação de um ex-aluno e dois de outras instituições.
Abaixo segue a sequência do Randori!

* <a target="_blank" href="https://www.facebook.com/lorraine.patiele">Lorraine Partiele</a>
* <a target="_blank" href="https://www.facebook.com/viniciusa1r3s">Vinicius Aires Barros</a>
* <a target="_blank" href="https://www.facebook.com/wandrobeckman">Wandro Beckman</a>
* <a target="_blank" href="https://www.facebook.com/arthacheres.santos">Arthacheres Santos</a>
* <a target="_blank" href="https://www.facebook.com/pedroreis.uft">Pedro Reis</a>
* <a target="_blank" href="https://www.facebook.com/osmirmariano">Hosmyr Mariano</a>
* <a target="_blank" href="https://www.facebook.com/thaylon">Thaylon Guedes Santos</a>
* <a target="_blank" href="https://www.facebook.com/gustavo.macedo.33">Gustavo Macedo</a>
* <a target="_blank" href="https://www.facebook.com/fabiocbarrionuevo">Fabio C Barrionuevo da Luz</a>

Para mais fotos clique [aqui](http://goo.gl/uStBdj)

##Código Fonte

O algoritmo foi codificado com auxílo da IDE Netbeans pelo fato de sua simplicidade e facilidade na criação de testes unitários com o JUnit.

###Classe FizzBuzz.java

```java
/*FizzBuzz.java*/
public class FizzBuzz {
    public static String Verifica(int num) {
        int result3 = num % 3;
        int result5 = num % 5;

        return (result3 == 0) && (result5 == 0)?("FizzBuzz") : //VERIFICA MOD == 0
                (result3 == 0)?("Fizz") :// verifica mod de 3 == 0
                ((result5 == 0)?("Buzz") :// verifica mod de 5 == 0
                ("" + num));
    }

    public static void main(String[] args){
        //TODO
    }
}
```

###Classe de Teste FizzBuzzTest.java

```java
/*FizzBuzzTest.java*/

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class FizzBuzzTest {
    public FizzBuzzTest() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of Verifica method, of class FizzBuzz.
     */
    @Test
    public void testVerifica3() {
        for (int i = 1; i <= 100; i++) {
            if (i % 3 == 0 && i % 5 != 0) {
                assertEquals("Fizz", FizzBuzz.Verifica(i));
            }
        }
    }

    @Test
    public void testVerifica5() {
        for (int i = 1; i <= 100; i++) {
            if (i % 5 == 0 && i % 3 != 0) {
                assertEquals("Buzz", FizzBuzz.Verifica(i));
            }
        }
    }

    @Test
    public void testVerifica3e5() {
        for (int i = 1; i <= 100; i++) {
            if (i % 5 == 0 && i % 3 == 0) {
                assertEquals("FizzBuzz", FizzBuzz.Verifica(i));
            }
        }
    }

    @Test
    public void testVerificaNaoE(){
        for (int i = 1; i <= 100; i++) {
            if (i % 5 != 0 && i % 3 != 0) {
                assertEquals(""+i, FizzBuzz.Verifica(i));
            }
        }
    }
}
```

<a href="https://github.com/dojoto/arquivos-dojos/tree/master/27_03_2015/FizzBuzz">Link para o repositório no GitHub</a>

FeedBack
------------

Ao final do Dojo tivemos um momento de feedback, onde foram apontados os pontos positivos e negativos ocorridos durante o evento.

<p align="center">
  <img src="http://dojoto.github.io/images/viniciusaires7/25-03-coding-dojo-feedback.jpg"/>
</p>
