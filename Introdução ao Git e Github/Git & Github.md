Git & GitHub

Git é diferente de GitHub.

Benefícios do git:
Controle de versão;
Armazenamento em nuvem;
Trabalho em equipe;
Melhorar seu código;
Reconhecimento.

Para quem tem sistemas operacionais do tipo abaixo vão utilizar terminais de acordo com a lista a seguir:
Windows
cd;
dir;
mkdir;
del/medir.

Linux:
cd;
LS;
mkdir;
rm-rf.

Como saber em que local estamos:
Clicar no botão do Windows
-> digitar cmd
-> LS ou dir

Como subir o nível do diretório?
Como descer o nível do diretório?
Como eu vou para pasta do sistema operacional?

No Windows o comando é o CD esse comando vai possibilitar a navegação entre as pastas.
Ele é igual para todos os sistemas 
operacionais.
-> no cmd digite "cd"
e passo um caminho específico, colocar "/" 
-> enter

Assim ele levará para a base do diretório "c:/"

Exemplo:
Se quiser entrar na pasta Windows?
É só digitar "cd windows" e enter, pronto!
Assim é possível entrar na pasta Windows.
Agora se utilizar o comando "dir" em seguida, aparecerá a lista de todos os arquivos, programas e pastas contidos na pasta Windows.

Já no Linux:
"cd e tc" depois "LS"

Caso queira voltar um nível na navegação é só utilizar:
"cd.." para Windows e Linux.

Comando para limpar o terminal:
No windows -> "cls" e enter.
No Linux -> "Clear" e enter ( tem um atalho, também, " Ctrl + L" e enter).

A tecla TAB no windows ajuda a completar a palavra.
Ex: se digitar E clicar em TAB, será completada a palavra windows.

COMO CRIAR UMA PASTA

O comando utilizado para isso é o " mkdir" após o nome da pasta.
Ex: c:\> mkdir worspace + enter.

*Pronto aprendemos a criar um diretório.
E para abrir e só digitar: "cd workspace" + enter, então aparecerá c:\workspace>

Usando o comando "encho"

Esse comando printa de volta no terminal uma frase o terço.
exemplo: c:\ worspace> encho hello>
Vai aparecer:
c:\ worspace> encho hello> hello.txt

 ">" É um redirecionador de fluxo.

-> sair da pasta "cd.."
-> Limpar "cls"
-> Listar  " dir"

Como deletar arquivos e repositórios:

Arquivos:
c:\ del workspace + enter
-> confirmar se sim ou não.
Nesse caso a pasta workspace' continua lá e só dá de "dir" para encontrar, mas os arquivos dentro dela foram deletados.

OBS:
Com a seta pra cima do teclado é possível voltar os caminhos já percorridos.
Ao encontrar c:\ workspace> encho hello> hello.txt

Remover repositórios:
C:> medir worspace /S / Q

No Linux é rm-rf

Tópicos fundamentais para entender o funcionamento do Git.

SHA1
Objetos fundamentais
Sistema distribuido
Segurança

SHA1 -> É um algoritmo de criptaçao.

A sigla SHA significa Secure Hash Algoritmo ( Algoritmo de Hash Seguro ), é um conjunto de funções Hash criptograficas projetadas pela NASA (Agência de Segurança Nacional dos EUA).

E , por que isso é importante?
R.: Por que a saída dessa encriptação, esses dados encriptados geram um conjunto de caracteres de 40 dígitos.

Resumidamente:
O SHA1 é uma é uma forma curta de representar um arquivo, ou estado de um arquivo.
 Exemplo:
1 encho " Olá Mundo" | open ssl SHA1 
2 > (stdin) = f9fc856e559b950175f2b7cd7dad61facbe58e7b

Obs: sempre que rodam um arquivo ele traz uma chave diferente.

VERIFICANDO NA PRÁTICA:
Na área de trabalho criar um arquivo . txt
Crie digitar.txt
-> colocar um texto e salvar
-> clicar com botão direito do mouse e abrir "Git Bash Gere"
-> no cmd, colocar:
openssl SHA1 diogit.txt  + enter
-> vai aparecer a chave com 40 dígitos
Em seguida alterar alguma coisa dentro do arquivo "diogit" e salvar.
-> no cmd com a seta para cima do teclado encontrar o caminho openssl SHA1.diogit.txt + enter
-> vai gerar uma nova chave de 40 dígitos
-> porém se colocar as mesmas informações (ou caracteres) que havia modificado e salvar. Ele vai gerar a mesma chave que tinha gerado antes da modificação.

OBJETOS INTERNO DO GIT.

BLOBS
TREES
COMMITS

BLOBS
\0
Olá Mundo

No cmd:

1 encho 'conteudo' | git hash-object  - -stdin
2> fc31e91b26cf85a55e072476de7f263c89260eb1
3
4 echo -e 'conteudo' | openssl SHA1
5> 65b0d0dda479cc03cce99528e28961e498155f5c

Esses códigos é para passar o conteúdo para a função git.
Se eu passar o conteúdo da função kit da (linha 1) ela não vai devolver o SHA1 desse conteúdo.

Se seguiu o código anterior vai dar erro porque vai gerar outro código sha1.
Isso acontece, porque esses objetos específicos do git, do jeito que o kit lida e manipula eles é através de objetos. Então os arquivos ficam guardados dentro desses objetos comando BLOB e esse objeto contém neta dado dentro dele.

BLOB
\0
Olá Mundo

Então objeto BLOB vai ter o tipo de objeto e tamanho do arquivo uma "\0" (conta Barra e zero) e o conteúdo de fato desse arquivo.

Vamos entender porque não está dando certo:

O código da linha 4 que vou passar os dados da string deve ficar da seguinte maneira:

4 echo e- "BLOB 9\0 'conteudo' | openssl SHA1
-> dessa forma na linha 5 o código vai ficar igual da linha 2.

Árvores:


TREE <tamanho>
\0
BLOB sa4d8s   texto txt

O TREE contém também metadado que tem o SHA1 e o nome do arquivo e onde estão localizados.

Observação:
As bolinhas ou blobs elas tem sha1 do arquivo, a "TREE" aponta para a "BLOB" e tem o SHA1 encriptado, ali os metadados da "TREE".
Então se mudar alguma coisa…um arquivo no qual essa"TREE" está apontando, quando ela for gerar o SHA1 desse metadado.
O SHA1 do BLOB  vai ter mudado e consequentemente vai refletir o SHA1 da TREE.
Logo uma coisa está relacionada com a outra.

Aqui vai uma demostração


##########

Então blog é um objeto que em cápsula esse comportamento de diretórios. Ele é usado para apontar para diretórios que contém arquivos, e por consequência apontar para arquivos, também.


Commit
TREE      s4a5sq1
Parente.   a98acq1
Autor.        Perkles
Mensagem "inicia…"
Timestamp .

Ou Commit é o objeto que vai juntar tudo, que vai dar sentido para as alterações que você está fazendo.
Então, o Commit aponta para uma árvore 🌲 (TREE).
Ele aponta para um "parente", ou seja, ele aponta para o último "commit" realizado antes dele.
O commit aponta para um autor.
O commit aponta para uma mensagem.

A parte genial de tudo é que os commits, também possui o SHA1, também possui encriptação, que é a geração desse Hash de 40 ' caracteres' identificador, dos seus metadados.

O que isso significa?

Significa que se você alterar uma blob…
Se você alterar um dado dentro da blob de um arquivo ele irá gerar um sha1 daquela blob.
Essa blob por sua vez tem uma árvore (TREE) apontado para ela, então se você alterou lá, vai alterar, também os metadados dá "TREE".

Então se alterar uma blob -> altera a TREE -> pode alterar o commit. É por esse motivo que  o git é tão confiável.


CHAVE SSH e TOKEN

CHAVE SSH
É uma forma de estabelecer uma conexão segura em criptada entre duas máquinas.

Vai sempre ter duas Chaves:
Pública
Privada

Dentro do GitHub
-> ir ao status
-> settings
Do lado esquerdo da tela vai em 
-> ssh and GPG Keeys 
-> clicar
No canto direito da tela clicar em 
-> Nova chave ssh Key 
Então tem que preencher o 
title
Key
Para que configure a chave propriamente no GitHub.

Agora é necessário fazer um processo pelo Cia Leani para poder gerar essa chave, e essa chave fica ligada na nossa máquina.

GERANDO UMA CHAVE SSH

Abrir o atalho Git Bash
-> então é só digitar:
$ ssh - Keygen  -t ed25519 -c fulano-de-tal-@gmail.com + enter.

Enter novamente
-> então vai pedir para entrar com uma senha (empty for no passphase):

Pronto geramos uma chave!


Agora vamos navegar para encontrar:
-> limpar o terminal "cls"  e digitar
$ cd /c/ User / nome da máquina/ .ssh/.
 + Enter
Listar os comandos
$ "LS" + enter

Ali estão as Chaves públicas e privadas.

Comando especial para visualizar o conteúdo dessas Chaves:

$ cat id_ ed25519.pub.  + Enter

Vai aparecer uma chave grande com seu e-mail no final.
copie a chave e vamos colocar no GitHub.

Voltando aquela página do GitHub que temos que preencher em title e colocar:

Title
Minha máquina Windows 

( essa é só uma sugestão de nome, você pode colocar o nome que quiser).

Key
-> aqui colar a assinatura da chave

Então vai pedir a senha para autenticação.

Voltando ao Cia LINE, ou seja, no Git Bash.
-> dar um "LS" só pra saber onde estamos. Tem que ser a pasta .ssh
Se der um "pwd" vai mostrar um caminho completo.
Ex: /c/user/ nome da máquina/.ssh

O que a gente vai fazer é inicializar o SSH o que é uma entidade que vai ficar encarregada de pegar as chaves e lidar com elas.
Então digite:

$ eval $ (ssh- agent-S) + enter

Vai aparecer: Agent pid 1382 ( esse número pode variar).
-> digite LS
Depois 
-> $ ssh- add id_ed25519
Vai pedir a senha da chave que foi criada.

VAMOS VALIDAR EM TRÊS PASSOS:

1° Clonar um repositório no GitHub.

Obs: para quem trabalha já com essa chave SSH não é possível copiar e colocar o URL então temos que pegar o caminho do SSH.

Então lá no repositório vai em:

<> Code
Clone
HTTPS
 ssh
-> copiar o código que aparece.

Voltar ao terminal e digitar

$ git clone ( e cole o código ou caminho)
-> vai vir uma pergunta
-> Responda e yes + enter
-> ele vai adicionar ao GitHub o seu Rusch
-> logo eu dou um LS
->
Vai aparecer o repositório que eu não teria se eu estivesse usando o https.


TOKEN DE ACESSO PESSOAL

2° forma de identificação.
Nesse caso você vai gerar um token lá no GitHub.

Lá onde paramos ssh keys
Do lado esquerdo do navegador
->Developer settings
-> perssonal accers tokens 
No canto direito em cima
-> Generrete New token

-> preencher meu token
Pode criar uma data para ele inspirar também.
✓reppor

Obs: copie certinho e salve esse caminho porque o token não aparece novamente

No sistema em uma pasta reservada do cmd digite: 
$ git clone https:/ github.com/Perkles/perkles.github.io
+Enter
Atenção: o nome Perkles é só um exemplo do nome de guit do professor que estava ensinando, no seu caso digite o se nome e seu endereço do github

Vai aparecer uma janela do git
Então é só copiar o toque e colar lá.
 
PRIMEIROS COMANDOS GIT

INICIANDO O GIT E CRIANDO COMMIT

1° Repositório
-> criar uma pasta chamada workspace' no diretório c:
-> então dentro do meu diretório c:
Clicar com botão direito e abrir o
Git Bash Gere
-> LS
-> enter
-> cd worspace
-> enter
Pronto estou dentro da pasta workspace.
-> limpar  Ctrl+L
-> dentro dessa pasta vamos criar outra pasta.
-> $ mkdir livro-receitas
-> enter
Agora que já temos a pasta criada vamos caminhar até ela
-> cd livro-receitas/

Agora vamos rodar um comando específico do git chamado:
"git init"
Para poder inicializá-lo e possibilitar que o nosso git comece de fato a gerenciar  e a versionar o nosso código.
-> $ git init
->enter

Vai aparecer uma mensagem que quer dizer "olha foi inicializada um repositório vazio dentro de: c:/worspace/livro-receitas/.git/

Obs: como LS não é possível visualizar passa pois ela é uma pasta oculta.
Então
Vamos usar uma "flag" especifica no comando LS  é o: "ls -a"

Vamos agora criar um arquivo dentro da pasta: livro de receitas.
Porém antes de criarmos esse arquivo temos que fazer a configuração inicial:
-> git config  - -global user.email coloque aqui o seu endereço de email que está no github.
 E agora vós configurar o User.
-> $git config  - -global user.name (coloque aqui seu nome) 
Ok! Feito a configuração inicial.
-> Agora vamos criar um arquivo dentro da pasta livro-receitas do tipo: Markdown
Com o final .md
-> salvar o arquivo
-> voltar ao terminal
-> commitar o arquivo.
-> $ git add  *
-> $ git commit -m  "commit inicial"
-> enter


INTRODUÇÃO AO GITHUB

CICLO DE VIDA DOS ARQUIVOS

Git Init
Quando usamos esse comando estamos criando de fato um repositório.

   Tracker 
Untracked    unmodified.  Modified Straged                                         adiciona arquivo—------------------>                                                                                 Edita arquivo—------->.     
                                              stage*arqu ->
   <--remove arq.
←—----- commit

Unmodified - é o arquivo que ainda não foi modificado
Modified - é o arquivo "unmodified" que sofreu modificação.
Straged - é um conceito chave para entendermos (como teatro tem uma pessoa que estão se preparando para apresentar o espetáculo)
Ostaged onde fica os arquivos que estão se preparando para poder fazer parte de um outro tipo de agrupamento.

EXPLICAÇÃO DOS CONCEITOS
Quando usamos o "git add"  a gente fez o seguinte processo: tínhamos um arquivo "Untracked" por quê?
R.: O que tínhamos acabado de criar ele exemplo: arquivo: "Strogonoff.md" e ele tinha acabado de ser criado naquele repositório que a gente criou o "git init", então eles estavam"Untracked" , o git não sabia da existência dele ainda.

Ao ser usado o comando "git add" o git add moveu o arquivo Untracked, direto para o "Straged".

Os arquivos unmodified é o seguinte: você tem um arquivo dentro do seu repositório B que ainda não sofreu modificação. Então você modifica seu arquivo e ele muda automaticamente de unmodified para modified 

Como ele modifica isso?

O git comparar o SHA1 dos arquivos.
Ele vai descobrir que aquele arquivo tem modificações.

Se rodarmos o git add de novo nesse arquivo modified ele irá para o Straged. ( Se prepara para fazer parte do outro grupo)

E se tiver um arquivo Unmodified sem nenhuma alteração, e remover esse arquivo, ele vai parar Untracked novamente.
Unmodified e modified quando esse arquivo e movido para o Straged ele está se preparando para fazer parte de um commit.


O QUE OS REPOSITÓRIOS SIGNIFICAM

Servidor
Remonte
Repositório

Ambiente de desenvolvimento

Working.      Staging.        Local 
Directory.      Área.            Repositório



Repositório fica guardado no servidor e só vai para o servidor remoto ( github) quando você empurra a alteração do seu servidor local para o repositório remoto através de algum comando.

Os arquivos ficam fazendo o processo cíclico de unmodified -> modified -> Straged.
Porém quando você faz um commit é aí que está a chave de tudo ele passa a ser um repositório local e o seu repositório local pode ser empurrado para um repositório remoto.


ENTENDENDO NA PRÁTICA

Abrir a pasta Git Bash Gere na pasta  workspace/livro-receitas/

Vamos colocar mais um artista nele

Git status
$ git status 
-> enter
Criar uma pasta
-> mkdir receitas
-> enter
->$ LS
-> enter
->$ mv strogonoff.md  ./receitas/
->enter
Ctrl+L
-> enter
Listar novamente
->$ cd recitas/
-> $ LS
->cd ..

Voltando ao git status
-> $ git status
-> enter

Vai ter muito mais informações agora.
->$ git add strogonoff.md receitas/
->enter
->git status
->enter
-> $ git commit -m "cria pasta receitas, move arquivo para receitas"
-> enter
-> $ git status
-> enter
-> $ LS
-> $ echo> README.md
-> enter
->$ LS
-> git status
-> Ctrl+L
Abrir o arquivo README no Explorer
Abrir o editor
Escrever "livro de receitas"
"Olá bem-vindos ao meu livro de receitas."
Strogonoff de frango 

-> $ git status
-> git add *
-> Ctrl+l
-> $ git status
-> $ git commit -m "adiciona Index"

GITHUB

Como verificar se as configurações do meu Git estão iguais ao do GitHub.

No Git Bash Gere
-> $ git config - -list

Assim ele vai fazer as configurações que estão no meu git

Como alterar as configurações caso o e-mail e o nome dos dois Gits não estejam iguais?

-> $ "q" para sair
Acessar o comando abaixo:
-> $ git config  - -global  - -unset user.email
->enter
-> $git config - -global - -unset user.name
Se eu for em: "git config - -list" agora não vou encontrar o e-mail e o nome
Então
É só voltar lá e usar:
->$ git config - -global user.email " escrever meu email"
-> enter
-> $ git config - -global user.name " colocar emu nome"
Dentro do GitHub
-> meus Repositório a
-> Novo Repositório
->coçar o nome do repositório (meu livro de receitas)
-> marcar se é público ou privado
-> você pode marcar o checkbox com README
-> porém nesse caso nós já criamos um README na máquina, portanto ficará desmarcado.
-> clicar em criar repositório
->agora vamos apontar o nosso repositório local para o nosso GitHub.

E qual é o endereço desse repositório aqui no GitHub?

R.: É uma URL que é: https://GitHub.com/o nome de identificação do meu git/meu-livro-de-receitas.git
Copiar o caminho
->vai no Git Bash Here
-> localiza a pasta c:/worspace/livro-receitad.master
->LS
Agora vamos empurrar o que está na nossa máquina local para o github.
Então, para que aconteça isso temos que acionar primeiro a origem, no qual estamos enviando esses arquivos o comando é:
-> $ git remonte add origin "https//GitHub.com/meu nome de identificação do github/ meu-livro-de-receitas.git"
->enter
Então se eu der um
->$ git remonte -v
->enter
Ele vai estar para mim as listas de repositórios remotos que eu tenho cadastrado.
Agora vou dar um git status, apenas para me certificar que não existe nenhuma pendência nesse repositório.

"PUSH" em inglês significa empurrar então vamos lá:
-> git PUSH origin master
->enter
->ele vai pedir as credenciais.
-> enter
Pronto foi para o github.


