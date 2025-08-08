FROM python:3.11.13

# ENV APP_HOME /app
# WORKDIR $APP_HOME

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos da aplicação
COPY . .

# quero copiar tudo para o caminho q tô apontando acima
COPY . ./

RUN pip install -r requirements.txt

EXPOSE 8080

# aqui ta simplificado pq o comando ta la  no  app.py
CMD python app.py