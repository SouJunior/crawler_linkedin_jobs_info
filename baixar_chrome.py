import requests
from zipfile import ZipFile
import os
from airflow import DAG
from datetime import datetime
from airflow.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.bash import BashOperator

#baixar driver chrome mais atualizado
def baixar_chrome():
    url = 'https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_win32.zip'
    endereco = 'chromedriver.zip'
    resposta = requests.get(url)
    with open(endereco,'wb') as novo_arquivo:
        novo_arquivo.write(resposta.content)
    z = ZipFile('chromedriver.zip','r')
    z.extractall()
    z.close

#exclui arquivos utilizados
def exclui_arquivos():
    os.remove("chromedriver.zip")
    os.remove("chromedriver.exe")
   

with DAG('baixar_chrome', start_date=datetime(2022,8,1),schedule_interval='30 * * * *',catchup=False) as dag:

    baixar_chrome = PythonOperator(
        task_id = 'baixar_chrome',
        python_callable = baixar_chrome
    )

    exclui_arquivos = PythonOperator(
        task_id = 'exclui_arquivos',
        python_callable = exclui_arquivos
    )


baixar_chrome >> exclui_arquivos