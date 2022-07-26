# esig_project

A new Flutter project.

## Getting Started

Esse projeto foi feito usando a IDE Android Studio. A seguir alguns comentários para rodar o projeto:
.É necessário ter instalado na máquina o Python3 para rodar o servidor local que fará as requisições http à API (https://www.python.org/downloads/)

## Setup do servidor local
.Excluir a pasta simple-server

.Clonar o seguinte repositório na pasta do projeto : https://github.com/linkedweb/simple-server (git clone https://github.com/linkedweb/simple-server).

.Navegue para a pasta recém-criada e rodando o comando: cd simple-server
.Configure o ambiente virtual rodando: python3 -m venv venv
.Depois ative o ambiente virtual rodando: source venv/bin/activate (para macOS) ou source venv/Scripts/activate.bat (para windows)
.Depois instale os pacotes necessários rodando: pip install -r requirements.txt
.Depois execute: python manage.py makemigrations 
.Depois execute: python manage.py migrate
.Finalmente execute o servidor rodando: python manage.py runserver
.Então vá para o seu browser e navegue para: http://localhost:8000/admin/
 Quando estiver no painel de login, use as seguintes informações para entrar:
 Login: Gabriel
 Senha: jaRae%s3
 .Tudo pronto!
 .(Qualquer dúvida acesse o repositório original do servidor (https://github.com/linkedweb/simple-server) criado pelo usuário Bryan Dunn)
