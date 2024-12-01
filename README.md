<div align="center">
<img src="https://portal-de-materias.vercel.app/assets/img/logo-senai.png" height="30px">
</div>

</br>

<h1> PORTAL DE QUIMICA <img src="https://portal-de-materias.vercel.app/assets/img/main-img.png" height="30px"></h1>

![Badge de Status do Projeto](https://img.shields.io/badge/Status-Finalizado-red)

<p align="center">
  <a href="">
    <img src="https://portal-de-materias.vercel.app/assets/img/Cover.png" width="100%;">
  </a>
</p>

## Experimente o Portal de Química 🌟

Confira uma prévia do site abaixo:

🔗 **Acesse o Preview Interativo**[👉 Preview](https://portal-de-materias.vercel.app/preview.html)

🔗 **Acesse a página do Banco de Dados**   [👉 Portal de Química]()

🔗 **Acesse o site completo clicando aqui**   [👉 Portal de Química](https://portal-de-materias.vercel.app/)


## Sobre o Projeto 📂

O Portal de Matérias - Química é um mini-site focado na disciplina de Química, parte de um portal maior que reúne conteúdos educativos para estudantes do Ensino Médio. O objetivo é oferecer recursos interativos e acessíveis, promovendo o aprendizado e ajudando os alunos a se prepararem para vestibulares e carreiras.

## Modelo de Dados🚀📊

### 📝 MER - Modelo Entidade-Relacionamento
 - ### Entidades 
```sh
TABLE especialistas
TABLE dicas
TABLE noticias
TABLE media_noticia
TABLE entrevistas
TABLE simulados
TABLE questoes
TABLE funcoes_scrum
TABLE integrantes
TABLE ferramentas
TABLE paginas_portal
TABLE contato
TABLE carreiras
```
- ### Atributos 
- especialistas
```sh
    id SERIAL PRIMARY KEY
    nome VARCHAR(100) NOT NULL
    especialidade VARCHAR(100) NOT NULL
```
 - carreiras
 ```sh
    curso VARCHAR(100) NOT NULL
    conexao_quimica VARCHAR(100) NOT NULL
    descricao TEXT NOT NULL
    habilidades_necessarias TEXT NOT NULL
    url_externo VARCHAR(100) NOT NULL
```

- dicas
```sh
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    video_url VARCHAR(255) NOT NULL
    id_autor INT NOT NULL

    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
```
- noticias
```sh
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_autor INT NOT NULL
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
```
- media_noticia
```sh
    id SERIAL PRIMARY KEY
    id_noticia INT NOT NULL
    url VARCHAR(255) NOT NULL
    FOREIGN KEY (id_noticia) REFERENCES noticias(id)
```
- entrevistas
```sh
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_entrevistado INT NOT NULL
    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)
```
- simulados
```sh
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_autor INT NOT NULL
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
```
- questoes
```sh
    id SERIAL PRIMARY KEY
    id_simulado INT NOT NULL
    enunciado TEXT NOT NULL
    resposta TEXT NOT NULL
    FOREIGN KEY (id_simulado) REFERENCES simulados(id)
```
- funcoes_scrum
```sh
    id SERIAL PRIMARY KEY
    funcao VARCHAR(100) NOT NULL
```
- integrante
```sh
    id SERIAL PRIMARY KEY
    descricao TEXT NOT NULL
```
- ferramentas
```sh
    id SERIAL PRIMARY KEY
    ferramenta VARCHAR(100) NOT NULL
    descricao TEXT NOT NULL
    url_img INT NOT NULL
```
- paginas_portal
```sh
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    url VARCHAR(100) NOT NULL
```
- contato
```sh
    id SERIAL PRIMARY KEY
    nome_completo VARCHAR(100) NOT NULL
    email VARCHAR(100) NOT NULL
    mensagem TEXT NOT NULL
```

- ### Relacionamentos
```sh
- Cada dica tem um autor (1:N)
- Cada noticia tem um autor (1:N)
- Cada noticia tem várias mídias (1:N)
- Cada entrevista tem um entrevistado (1:N)
- Cada questão tem um simulado (1:N)
- Cada integrante tem uma função no scrum (1:1)
```
##  📉 Diagrama Entidade Relacionamento

<a href="">
<img src="./A - MER E DER/Portal de Materias - v2 (1).jpg" width="100%;">
</a>

## Tecnologias Utilizadas 🛠 💻

- POSTGRES
### **Banco de Dados**
  <a href="https://www.w3.org/Postgres/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/800px-Postgresql_elephant.svg.png" alt="html5" width="50" align="center"/>
  </a>

### **Hospedagem e Deploy**
  <a href="https://www.w3.org/Postgres/" target="_blank" rel="noreferrer"> <img src="https://cdn-icons-png.flaticon.com/256/25/25231.png" alt="html5" width="50" align="center"/>
  </a>
    <a href="https://www.w3.org/GitHub/" target="_blank" rel="noreferrer"> <img src="https://pipedream.com/s.v0/app_XaLh2x/logo/orig" alt="html5" width="50" align="center"/>
  </a>


## Equipe 🏋️‍♀️

Conheça os membros da equipe responsáveis pelo desenvolvimento do Portal de Matérias,
dedicados a transformar o aprendizado em uma experiência mais acessível e envolvente. Cada integrante trouxe sua expertise e dedicação para garantir o sucesso do projeto, desde a organização até o desenvolvimento técnico. 

<a href="">
<img src="https://portal-de-materias.vercel.app/assets/img/integrantes/equipe.png" width="100%;">
</a>

## Equipe ✨

<table>
    <tr>
        <td align="center" width="20%">
            <a href="https://www.linkedin.com/in/samuelbrag4/">
                <img src="https://avatars.githubusercontent.com/u/158165702?v=4" width="120px;" alt="Samuel Braga"/>
                <br /><b>Samuel Braga</b>
            </a>
            <br />
        </td>
        <td align="center" width="20%">
            <a href="https://www.linkedin.com/in/mariana-cardoso-507bba244/">
                <img src="https://avatars.githubusercontent.com/u/158165810?v=4" width="120px;" alt="Mariana Cardoso"/>
                <br /><b>Mariana Cardoso</b>
            </a>
            <br />
            <sub></sub>
        </td>
        <td align="center" width="20%">
            <a href="https://www.linkedin.com/in/vitor-sampaio-152839241/">
                <img src="https://avatars.githubusercontent.com/u/162587800?v=4" width="120px;" alt="Vitor Sampaio"/>
                <br /><b>Vitor Sampaio</b>
            </a>
            <br />
            <sub></sub>
        </td>
    </tr>
    <tr>
        <td align="center" width="20%">
            <a href="https://www.linkedin.com/in/maria-eduarda-reis-pereira-0756542b1/">
                <img src="https://avatars.githubusercontent.com/u/158165914?v=4" width="120px;" alt="Maria Eduarda Reis"/>
                <br /><b>Maria Eduarda Reis</b>
            </a>
            <br />
        </td>
        <td align="center" width="20%">
            <a href="https://www.linkedin.com/in/bruno-quintino-2268b932b/">
                <img src="https://avatars.githubusercontent.com/u/158165665?v=4" width="120px;" alt="Bruno Quintino"/>
                <br /><b>Bruno Quintino</b>
            </a>
            <br />
            <sub></sub>
        </td>
    </tr>
</table>

## Funções 📝

- **Samuel Braga:** P.O., UX/UI Designer, Desenvolvedor, Identidade Visual, Testes
- **Mariana Cardoso:** Scrum Master, Desenvolvedora, Documentação, Gerenciamento, Design, Identidade Visual;
- **Vitor Sampaio:** Desenvolvedor, Design, Testes;
- **Maria Eduarda Reis:** Desenvolvedora, Design, Identidade Visual;
- **Bruno Quintino:** Desenvolvedor, Conteúdos, Testes


## Contribuindo com o nosso **Projeto**!💪

Se você deseja contribuir com o **Portal de Química**, siga os passos abaixo: 

1. Faça um fork do repositório. 🔧
   - Isso cria uma cópia do repositório no seu próprio GitHub.
   - Exemplo: Clique no botão "Fork" no canto superior direito da página do repositório.

2. Clone o repositório forkado para o seu computador. 💻
   - `git clone https://github.com/seu-usuario/nome-do-repositorio.git`
   - Exemplo: `git clone https://github.com/joao/projeto-exemplo.git`

3. Crie uma nova branch para a sua feature. 🎞
   - `git checkout -b feature/nova-feature`
   - Isso cria e muda para uma nova branch chamada `feature/nova-feature`.
   - Exemplo: `git checkout -b feature/adiciona-nova-funcionalidade`

4. Faça commit das suas alterações. 📦
   - `git commit -am 'Adiciona nova feature'`
   - Isso adiciona todas as mudanças e cria um commit com a mensagem `'Adiciona nova feature'`.
   - Exemplo: `git commit -am 'Corrige bug na função de login'`

5. Faça push para a branch. 🏃‍♂️
   - `git push origin feature/nova-feature`
   - Isso envia suas alterações para o repositório remoto na branch `feature/nova-feature`.
   - Exemplo: `git push origin feature/adiciona-nova-funcionalidade`

6. Abra um Pull Request. 💽
   - Vá até o repositório original no GitHub e clique no botão "New Pull Request".
   - Selecione a branch que você criou e envie o Pull Request para revisão.

### Explicação dos comandos Git: 👩‍💻👨‍💻

- `git clone <url>`: Clona o repositório especificado pela URL para o seu computador.
- `git checkout -b <nome-da-branch>`: Cria uma nova branch com o nome especificado e muda para essa branch.
- `git commit -am '<mensagem>'`: Adiciona todas as mudanças no diretório de trabalho ao índice (staging area) e cria um commit com a mensagem especificada.
- `git push origin <nome-da-branch>`: Envia as mudanças da branch especificada para o repositório remoto.

Seguindo esses passos, você poderá contribuir com o projeto de forma organizada e eficiente. Agradecemos suas contribuições!


## Nossos Agradecimentos ❤

Agradecemos a todos que contribuíram para a realização deste projeto, seja com código, sugestões ou feedback. Sua ajuda foi essencial para o desenvolvimento do **Portal de Química**.