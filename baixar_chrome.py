import requests
from zipfile import ZipFile
import os

#baixar driver chrome mais atualizado
def baixar_chrome(url, endereco):
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
    
if __name__ == "__main__":
    baixar_chrome('https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_win32.zip', 'chromedriver.zip')
    exclui_arquivos()
