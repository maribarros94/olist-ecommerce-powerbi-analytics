import pandas as pd
from sqlalchemy import create_engine
import os

# Configuração da conexão PostgreSQL
DB_USER = "postgres"
DB_PASS = "sua_senha"
DB_HOST = "localhost"
DB_PORT = "5432"
DB_NAME = "olist_db"

engine = create_engine(f"postgresql://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}")

def carregar_dados_olist(caminho_pasta):
    for arquivo in os.listdir(caminho_pasta):
        if arquivo.endswith(".csv"):
            nome_tabela = arquivo.replace("olist_", "").replace("_dataset.csv", "").replace(".csv", "")
            caminho_completo = os.path.join(caminho_pasta, arquivo)
            
            print(f"Processando {arquivo} -> Tabela: {nome_tabela}...")
            df = pd.read_csv(caminho_completo)
            
            # Carga automatizada para o PostgreSQL
            df.to_sql(nome_tabela, engine, if_exists="replace", index=False)
            print(f"Tabela '{nome_tabela}' carregada com sucesso!")

if __name__ == "__main__":
    pasta_csv = "./dados_brutos"
    carregar_dados_olist(pasta_csv)
