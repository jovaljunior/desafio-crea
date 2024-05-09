# desafio-crea
Projeto para o desafio de seleção do CREA

Para que o projeto seja executado, é necessário a criação de um banco de dados no PostgreSQL chamado crea.<br/>
As configurações de acesso ao banco de dados (host, usuário, senha) devem ser configuradas no arquivo src/main/resources/META-INF/persistence.xml.<br/>
O projeto está configurado para criar as tabelas e relacionamentos do banco de dados, além de carregar um script para iniciar a tabela de títulos, ao ser iniciardo.<br/>
Caso queira criar essa informações via ddl, na pasta src/main/resources/META-INF existe um arquivo chamado createDDL.ddl com o script para geração das tabelas.
Para executar o projeto, é só executar o seguinte comando dentro da pasta do projeto:
```console
#mvn clean install wildfly-jar:run
```

