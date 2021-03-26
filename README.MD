## Sistema para criação de receitas

### Projeto para disciplina laboratório de engenharia de software 2021
### Autor: Rafael Motta

> Tecnologias utilizadas até o momento: HTML5, JavaScript, JSP, EclipseEE

1. Inicialmente foi feito a organização do projeto, contruindo
a hierarquia de pastas pelo próprio inicializador do gradle.

2. Em seguida foi realizado o termino das configurações de dependencia, 
configurando os arquivos build.gradle, settings.gradle e gerando o wrapper
e o war.

3. Então foi iniciado o procedimento de controle de versão, com a configuração
do git e seus repositorios, e a conexão com o github.

4. O desenvolvimento foi iniciado nesse ponto com a IDE EclipseEE. Primeiramente focado na construção
do pacote _controller_ com a utilização de servlets.

5. Em seguida realizou-se a estruturação das paginas JSP, via HTML5 e feita a conexão
inicial com o servlet por requisição get, com controle de rotas. (O arquivo XML não
foi criado, visto que foi utilizado a _annotation_ "@WebServlet" com o padrão _.action_
no sistema de _switch_)
 
6. Nesse momento foi implementado os formulários, utilizando os recursos para troca de 
informação entre as camadas do sistema.

7. Resumo, com descrição da _view_ e dos formulários: https://youtu.be/Fo4r5TZ2N3Y


