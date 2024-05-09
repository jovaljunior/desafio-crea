# desafio-crea
Projeto para o desafio de seleção do CREA

Para que o projeto seja executado, é necessário a criação de um banco de dados no PostgreSQL chamado crea.
As configurações de acesso ao banco de dados (host, usuário, senha) devem ser configuradas no arquivo src/main/resources/META-INF/persistence.xml.
O projeto está configurado para criar as tabelas e relacionamentos do banco de dados, além de carregar um script para iniciar a tabela de títulos.
Caso queira criar essa informações via ddl, na pasta src/main/resources/META-INF existe um arquivo chamado createDDL.ddl com o script para geração das tabelas do banco de dados e carregamento de informações iniciais.
