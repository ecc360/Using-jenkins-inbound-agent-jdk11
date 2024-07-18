FROM bitnami/kubectl:1.28 as kubectl

FROM jenkins/inbound-agent:latest-jdk21

# Ejecutar comandos como root
USER root

# Actualizar los paquetes e instalar python3, pip y venv en una sola capa
RUN apt-get update -y && \
    apt-get install jq -y && \
    apt-get install -y python3 python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists/*

# Intalar PIP
RUN pip3 install kubernetes --break-system-packages
RUN pip3 install requests --break-system-package

# Copiar kubectl desde la imagen kubectl
COPY --from=kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/

# Establecer el usuario jenkins y los argumentos de Java
USER jenkins
ENV JAVA_ARGS="hudson.slaves.SlaveComputer.allowUnsupportedRemotingVersions=true"

# Asegurarse de que el entorno virtual esté activado en cada sesión
ENV PATH="/opt/venv/bin:$PATH"

# Definir el punto de entrada
ENTRYPOINT ["/usr/local/bin/jenkins-agent"]
