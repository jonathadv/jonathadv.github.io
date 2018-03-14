---
title: "Linha de Comando"
date: 2017-12-14T22:58:13-02:00
draft: false
description: "Além de possuírem a interface gráfica (GUI), proporcionando ao usuário muitas aplicações gráficas, os sistemas baseados em GNU/Linux (e outros Unix-like) são conhecidos por serem extremamente poderosos em relação às aplicações de linha de comando. É possível inclusive, fazer praticamente qualquer tarefa no sistema utilizando apenas a interface de linha de comando."
---


<a href="/pescar" title="Voltar para Home Pescar"><i class="fa fa-arrow-circle-o-left"></i><b>Voltar para Home Pescar</b></a>

Como usuários de computadores, estamos acostumados à interagir com programas gráficos como processadores de texto, editores de imagem, jogos, e outros. Embora essas ferramentas gráficas sejam o que utilizamos na maior parte do tempo como usuários domésticos de um computador, elas não são tudo o que um sistema operacional pode oferecer.
Existe uma infinidade de programas que são utilizados apenas através de comandos de texto inseridos pelo usuário. Nós os chamamos de aplicações de interface de linha de comando ([CLI](http://pt.wikipedia.org/wiki/Linha_de_comandos)).

Além de possuírem a interface gráfica ([GUI](http://pt.wikipedia.org/wiki/Interface_gr%C3%A1fica_do_utilizador)), proporcionando ao usuário muitas aplicações gráficas, os sistemas baseados em GNU/Linux (e outros [Unix-like](http://pt.wikipedia.org/wiki/Sistema_operacional_tipo_Unix)) são conhecidos por serem extremamente poderosos em relação às aplicações de linha de comando. É possível inclusive, fazer praticamente qualquer tarefa no sistema utilizando apenas a interface de linha de comando.

Para um usuário comum, que só quer utilizar seu computador para tarefas domésticas e de escritório, os conhecimentos em linha de comando não se fazem necessários, porém para um usuário avançado, é muito importante conhecer alguns comandos, pois esses tornam a administração do sistema mais fácil e mais rápida, inclusive podendo ajudar a descobrir a causa de problemas que estejam ocorrendo no sistema.

Por ser uma forma rápida de administrar o sistema, grande parte da ajuda que existe em fóruns na internet utiliza comandos para diagnosticar erros e propor soluções.

A baixo temos uma breve explicação sobre alguns dos comandos mais comuns em um sistema GNU/Linux.

----

### Elementos da linha de comando:

<pre>usuario@nome-do-computador: ~$ comando -p --parametro "argumento"</pre>
`usuario` - O nome do usuário autenticado no sistema.

`@` - Símbolo que representa a preposição "em".

`nome-do-computador` - Nome do computador.


`:` - Separador

`~` - Representa o diretório onde  o suário atualmente está. `~` é o diretório *Home* do usuário. Poderia ser outro diretório como `/etc` ou `/bin`.

`$` - Símbolo que representa um usuário comum do sistema. Quando o usuário *root* do sistema está autenticado, este símbolo muda para `#`.

`comando` - É um comando qualquer executado pelo usuário.

`-p` e `--parametro` - Representam funções que `comando` pode executar.

`"argumento"` - Representa um argumento enviado pelo usuário para `comando`. Este argumento não é uma função de `comando`, mas alguma informação que `comando` precisa para executar sua função, como um caminho do sistema ou o nome de um arquivo.

----

### Comandos básicos do sistema:
<br/><br/>

`man <comando>` - Mostra o manual de um comando.

----

`who` - Mostra os nomes dos usuários autenticados no sistema.

----

`whoami` - Mostra o nome do usuário autenticado na sessão atual do sistema.

----

`pwd` - Mostra o caminho do diretório atual.

----
`ls` - Lista arquivos e diretórios (pastas).

* `ls -l` - Lista arquivos e diretórios com mais detalhes.

----
`cd "/caminho/do/diretório"` - Muda do diretório atual para a localização especificada.

----
`cp "arquivo1" "arquivo2"` - Copia arquivo ou diretório vazio **arquivo1** para **arquivo2**.

* `cp -R "diretório1" "diretório2"` - Copia **diretório1** e todo seu conteúdo para **diretório2**.

----
`mv "arquivo1" "arquivo2"` - Move ou renomeia arquivo/diretório de **arquivo1** para **arquivo2**.

----
`mkdir "novo_diretório"` - Cria novo diretório com o nome **novo_diretório**

* `mkdir -p "/caminho/do/novo_diretório"` - Cria **novo_diretório** e todo o caminho até ele, caso não exista.

----
`rmdir "diretório"` - Remove **diretório** se este estiver vazio.

----

`rm "arquivo"` - Remove **arquivo**.

* `rm -r "diretório"` - Remove **diretório** e todos os arquivos dentro dele.


----
`clear` - Limpa a tela do terminal

----
`date` - Mostra a data atual como: *Sáb Mai 28 21:38:57 BRT 2016*


----
`cal` - Mostra um calendário com o mês atual

* `cal <mes> <ano>`
* `cal 2017` - Mostra o calendário completo do ano 2017
* `cal 02 2017` - Mostra o calendário do mês de fevereiro do ano 2017

----
`df` - Mostra, em bytes, o uso do disco pelo sistema.

* `df -h` - Mostra o uso do disco em Megabytes ou Gigabytes, conforme a quantidade.


----
`free` - Mostra, em bytes, o uso de memória pelo sistema.

* `free -h` - Mostra o uso de memória em Kilobytes, Megabytes ou Gigabytes, conforme a quantidade.

----
`cat "arquivo1"` - Mostra o conteúdo de **arquivo1**.

----

`more "arquivo1"` - Mostra conteúdo de **arquivo1** progressivamente.

----

`less "arquivo1"` - Mostra conteúdo de **arquivo1** conforme usuário navega para cima ou para baixo.

----
`wc` - Conta quantidade:

* `wc -c "arquivo1"` - A quantidade de bytes em **arquivo1**.
* `wc -w "arquivo1"` - A quantidade de palavras em **arquivo1**.
* `wc -l "arquivo1"` - A quantidade de linhas e **arquivo1**. 

----

`grep "palavra" "arquivo1"` - Filtra **arquivo1** por ocorrências de **"palavra"**.

* `grep -n "palavra" "arquivo1"` - Filtra **arquivo1** por ocorrências de **"palavra"** mostrando o número das linhas de cada ocorrência.

----
`|` - (*Pipe*) - Comando que tranfere a saída de um comando para a entrada de outro comando. Permite encadear comandos para realizar tarefas mais complexas.

Exemplos:
`cat arquivo1.txt | grep "palavra1"` - Abre arquivo **arquivo1.txt** e filtra-se por **palavra1**.

`cat arquivo1.txt | wc -w` - Conta a quantidade de palavras no **arquivo1.txt**

`fortune | cowsay` - Gera uma frase aleatória usando o **fortune** e mostra num balão de diálogo falado por uma vaca.

----

### Artigos Externos

* [Comandos Básicos para Iniciantes(vivaolinux.com.br)](https://www.vivaolinux.com.br/dica/Comandos-basicos-para-iniciantes)
* [Introdução ao Shell Script (aurelio.net)](http://aurelio.net/shell/apostila-introducao-shell.pdf)
* [Canivete Suíço do Shell (aurelio.net)](http://aurelio.net/shell/canivete/)

