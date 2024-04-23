> # Study-Monorepo
> um repositorio unico para o estudo, atividade e pratica de linguagens de programação e frameworks. basicamente um grande caderno multimaterias tentando aplicar as praticas de monorepo e seus beneficios

>[!CAUTION]
>esse projeto está encerrado por motivos de melhoria, um Monorepo tem certos beneficios que meu projeto não está tendo, então vou fazer um Monorepo "2.0", veja mais sobre

<details>
 <summary> saiba mais </summary>

estou fazendo alguns ajustes no projeto pois depois de estudar mais sobre monorepo percebi que estava fazendo errado.

o Monorepo tem algumas carcateristicas mas basicamente é todos os projetos em um lugar só, isso é dificil de quantificar e avaliar então vamos focar nos beneficos.

os beneficios de um Monorepo são:
---------------------------------------------------------------------------------------------

 - compartilhamento de codigo
   > o monorepo promove o compartilhamento e a reutilização de codigo de forma mais facil por conseguir isolar componentes reutilizaveis
   > e chamar de forma simples com imports locais
 - rastreio de git
   > o monorepo facilita o rastreio de commits em branchs diferentes por reunir tudo em um local só, utilizando plugins e ferramentas
   > de analis de commits você consegue ter todo o controle de todos os projetos compartilhados.
 - manter o codigo atualizado
   > o monorepo obriga você manter o codigo atualizado por conta do primeiro beneficio, quando vc tem componentes isolados e atualiza um deles
   > todos os locais onde você está importando e usando ficara com warnings ou causando erros o que facilita você localizar e atualizar todas
   > as implementações que você fez com aquele componente, dessa forma mantem seu codigo sempre atualizado
 - segurança
   > por você ter todos os projetos em um unico ambiente, sempre que você atualizar o ambiente (atualizando uma linguagem ou uma tecnologia) você
   > será obrigado a atualizar os codigos defasados, forçando você a não ter sistemas legado e vulneraveis a falhas antigas

beneficios especificos da minha modalidade de monorepo
---------------------------------------------------------------------------------------------
 - reunir o conteudo de estudo
   > fica facil rever algum conceito especifico ou algum codigo que fiz só uma vez por saber onde ele está
 - contexto de ia
   > qualquer ia que eu va utilizar para AI pair programing (programação em pares com ia) que tenha acesso a source do projeto
   > vai ler e entender todos os projetos e os componentes que eu utilizo e isso constroi uma ia mais personalizada para meu nivel
   > sugerindo codigos e soluções mais proximas doq eu tenha feito ou aprendido
 - indexar e sumarizar os conteudos
   > criando listas em readme.md com compatibilidade com o github e outros gerenciadores de git com os meus projetos, descrições e
   > os conteudos facilita eu encontrar o que eu quero e organizar tudo. o que acontece muito e iria acontecer comigo em algum momento
   > é começar a ter 100 repositorios com um monte de coisa só de teste e estudo que eu nunca vou encontrar quando precisar.
   > dessa forma eu adiciono um contexto aos meus codigos e consigo verifica-los e manipula-los facilmente.
   > abaixo na versão antiga tem um exemplo disso.


   então, muito lindo o uso de monorepo né ? principalmente para esse tipo de uso, estudos, mas eis o problema.
   se você analisar a arquitetura dos repositorios atualmente e o historico de commits você vai entender, eu não tenho __NENHUM__ desses
   beneficios porq o meu monorepo não ta tendo a parte do monolitic, ele não ta sendo compartilhado pois ele esta dividido em linguagens
   diferentes. dentro de cada linguagem eu tenho sim um monorepo, e isso vai ser muito bom porq ai sim eu vou ter um monorepo mas atualmente
   o que eu tenho, de forma resumida, é um portifolio mal feito se passando como monorepo.

   é importante reconhecer os erros e mais importante ainda evoluir com eles, não vou abandonar a ideia, mas vou fazer funcionar.
   estou criando os repositorios atualizados para meu monorepo eficaz e vou listar-los aqui.

 
</details>


> ## linguagens e frameworks aqui:
> - [Batch](./Batch/README.md) 
> - [React.js](./React.js/README.md) 
> - [Java](./Java/README.md) 
