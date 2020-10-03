# Paso 1: Sistema operativo
FROM alpine


# Paso 2: instalacion de python

RUN echo "**** install Python ****" && \
    apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi

# Paso 3: definidiendo el directorio de trabajo
WORKDIR /app

# Paso 4: copiando los requerimientos al directorio
COPY /requirements.txt /app

RUN pip3 install -r requirements.txt

COPY ["ServerA.py", "/app"]

# Paso 5: Exponiendo el puerto del contenedor 
EXPOSE 5001


# Paso 6: Punto de entrada
ENTRYPOINT [ "python3" ]

# Paso 7: Comando a utilizar
CMD ["ServerA.py"]
