# syntax=docker/dockerfile:1
FROM "selecione a imagem que ira utilizar do python"
WORKDIR "Insira o diretorio que sera criado dentro do container"
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN "insira o comando que deve ser utilizado para instalar as dependencias que estao contidas no arquivo requirements.txt"
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
