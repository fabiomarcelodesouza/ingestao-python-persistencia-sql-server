# Pipeline de Ingestão de Dados usando Python + SQL Server

Este repositório contém um notebook Python que implementa um pipeline de ingestão de dados, utilizando Python em conjunto com SQL Server. O pipeline realiza a leitura de dados de arquivos CSV, limpeza e formatação desses dados, e posteriormente os armazena em uma tabela do SQL Server. Além disso, o notebook realiza consultas SQL para obtenção de estatísticas gerais de pedidos e gera visualizações gráficas para análise dos dados.

## Pré-requisitos

Certifique-se de ter as seguintes bibliotecas instaladas em seu ambiente Python:

- pandas
- pyodbc
- sqlalchemy
- matplotlib
- seaborn

## Configuração

Antes de executar o notebook, é necessário configurar a conexão com o banco de dados SQL Server. No código, a conexão é definida pela variável `database_url`, que deve ser configurada com o nome de usuário (`username`), senha (`password`), servidor (`server`), e nome do banco de dados (`database`). Certifique-se de ter o driver ODBC instalado.

## Estrutura do Código

- **Importação de Bibliotecas:** As bibliotecas necessárias para a execução do pipeline são importadas.

- **Funções de Limpeza e Formatação:** Funções auxiliares são definidas para verificar e formatar datas e números de ponto flutuante.

- **Conexão com o Banco de Dados:** Uma engine de conexão com o banco de dados SQL Server é criada, e o nome da tabela é definido como 'Orders'.

- **Criação da Tabela:** A tabela 'Orders' é criada no banco de dados usando o seguinte script SQL:

    ```sql
    USE Database
    GO

    IF OBJECT_ID('Orders', 'U') IS NOT NULL
    BEGIN
        DROP TABLE Orders
    END

    CREATE TABLE [Orders](
        [order_id] [int] NOT NULL,
        [delivery_date] [datetime] NOT NULL,
        [shop_name] [varchar](50) NOT NULL,
        [amount] [float] NOT NULL
    )
    GO
    ```

- **Ingestão de Dados:** O pipeline percorre os arquivos no diretório especificado, lê os dados, realiza a limpeza e formatação, e insere os dados na tabela do banco de dados.

- **Consultas SQL:** Duas consultas SQL são executadas para obter estatísticas gerais de pedidos e o total de valores por data de entrega.

- **Exibição de Resultados:** Os resultados das consultas são exibidos no notebook.

- **Visualizações Gráficas:** Três gráficos de barras são gerados para analisar o número de pedidos por loja, o total de vendas por loja e o total de vendas por data de entrega.

## Execução

Execute o notebook Python para realizar a ingestão de dados e análise estatística. Certifique-se de ter as permissões adequadas para se conectar ao banco de dados SQL Server.

**Observação:** É importante que os dados de conexão e as configurações estejam corretamente definidos antes de executar o notebook.