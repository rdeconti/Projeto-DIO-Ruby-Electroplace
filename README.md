:spiral_calendar: Atualizado em 14 de abril de 2021 :heart:

<img align="right" alt="GIF" height="160px" src="https://github.com/rdeconti/rdeconti-resources/blob/main/under_construction.gif" />

:blush: Este projeto está em estudo. Carga inicial realizada para manter cópia de segurança :blush:

<img align="right" alt="GIF" height="160px" src="https://github.com/rdeconti/rdeconti-resources/blob/main/Digital%20Innovation%20One%20-%20Logotipo.png" />

# Projeto Digital Innovation One - Live Coding

# Montando um E-commerce

Este projeto foi proposto pela Digital Innovation One

- Link do código original: https://github.com/LucianoCordeiro/electroplace
- Professor Luciano Cordeiro
- Aula: ???????????????

# Descrição

Durante o aula prática "Ruby on rails: Montando uma rede social" desenvolvemos uma rede social que vai conter estas ferramentas:

- Painel de administrador
- Área privada do usuário
- Criação de POST
- Seguir / Deixar de seguir pessoas
- Curtir / Deixar de curtir POST
- Criar / Remover comentários

# Ferramentas utilizadas

- Devise para autenticação
- RSPEC para testes unitários
- Javascript e JQuery
- Bootstrap

# Detalhes técnicos

- Bundle complete! 19 Gemfile dependencies, 86 gems now installed.
- Ruby version: ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x64-mingw32]
- Rails vercdsion: Rails 6.1.3
- yarn version: v1.22.10
- devise version: 4.7.3
- Rspec
   -- rspec-core (3.10.0)
   -- rspec-expectations (3.10.0)
   -- rspec-mocks (3.10.0)
   -- rspec-rails (4.0.1)
   -- rspec-support (3.10.0)

# Desenvolvimento e execução

- rails new social-networking -d postgresql
- Gemfile: instalar as gems devise e rspec
- rodar o gem install bundler:1.17.2
- rodar o bundle install
- rodar o yarn install --check-files
- reset database: rodar rails db:drop -> db:create -> db:migrate
- rodar o rails generate devise admin
- rodar o rails db:create

Created database 'social_networking_development'
Created database 'social_networking_test'

- rodar o rails db:migrate
- rodar o rails generate rspec:install
- rodar o rails db:migrate RAILS_ENV=testrspec spec
- executar os testes: rspec spec

Admin
  admin is valid
  admin is not valid

Finished in 0.58266 seconds (files took 8.44 seconds to load)
2 examples, 0 failures

- rodar a aplicação com rails server
- rodar o rails generate devise view
- rodar o rails generate resource post
- rodar o rails generate resource get
- rodar o rails db:seed
You have 2 pending migrations:
  20210321142804 CreatePosts
  20210321143117 CreateGets
- rodar o rails db:migrate

# Exemplos de telas

## Tela ????
<img src="https://github.com/rdeconti/Projeto-DIO-HTML-Minha-Pagina/blob/main/????" />
