import calendar
from time import sleep
from selenium import webdriver
import datetime
navegador = webdriver.Chrome()
#ano = datetime.datetime.year
#pasta_destino = "C:/ALLUSERSPROFILE/CSIDL_DEFAULT_PERSONAL/CSIDL_COMMON_DOCUMENTS/"

"""profile = webdriver.ChromeOptions()

profile.set_preference("browser.download.dir", 'CSIDL_COMMON_DOCUMENTS')
profile.set_preference("browser.download.folderList", 2)"""

#Governo Federal Brasileiro
navegador.get("https://www.gov.br/receitafederal/pt-br/acesso-a-informacao/dados-abertos/receitadata/arrecadacao/relatorios-do-resultado-da-arrecadacao")
ano = navegador.find_element_by_xpath("//*/div/h3")
print("ano").text


"""navegador.find_element_by_xpath("//*[@id=d0c4d14134a64652a38defb9eba2771a]/div/table/tbody/tr[1]/th[1]")"""

"""navegador.get ("https://www.gov.br/receitafederal/pt-br/acesso-a-informacao/dados-abertos/receitadata/arrecadacao/relatorios-do-resultado-da-arrecadacao/arrecadacao-2020/dezembro2020/notdez20.xlsx")

sleep(5)"""

#Governo da Argentina
"""navegador.get("https://www.argentina.gob.ar/economia/ingresospublicos/pormes")
navegador.get("https://www.argentina.gob.ar/sites/default/files/2020-6.xlsx")
sleep(5)

#Governo do Uruguai
navegador.get("https://www.dgi.gub.uy/wdgi/page?2,principal,dgi--datos-y-series-estadisticas--serie-de-datos--recaudacion-anual-y-mensual-por-impuesto,O,es,0")
xls = navegador.find_element_by_class_name("TitleStyle865_3")
xls.click()
sleep(5)"""


print( "Concluido!")

