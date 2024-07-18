# Using-jenkins-inbound-agent-jdk11

### Dockerfile para Agente Entrante de Jenkins con Kubernetes CLI y Python 3

Este repositorio contiene un Dockerfile diseñado para crear un agente entrante de Jenkins con las siguientes configuraciones:

- **Herramientas Instaladas:**
  - Kubernetes CLI (`kubectl`) desde la imagen base `bitnami/kubectl:1.28`.
  - Python 3, pip y venv para entornos virtuales.
  - Herramientas adicionales como `jq` y `requests`.

- **Configuraciones Adicionales:**
  - Configura el entorno para ejecutar comandos como usuario `root` durante la instalación de herramientas.
  - Configura el usuario `jenkins` para la ejecución del agente Jenkins.
  - Establece argumentos de Java para permitir versiones de remoting no soportadas.

- **Uso:**
  - Esta imagen está disponible en Docker Hub como `ecc360/inbound-agent-kubectl:latest-jdk21`.
  - Es ideal para desplegar agentes Jenkins dentro de un entorno Kubernetes con acceso directo a comandos de Kubernetes (`kubectl`) y Python 3 para automatización y tareas de integración continua.

Puedes obtener la imagen directamente desde Docker Hub con:

```bash
docker pull ecc360/inbound-agent-kubectl:latest-jdk21
```

### Capturas de la configuracion desde jenkins

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_1.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_2.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_3.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_4.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_5.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_6.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_7.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_8.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_9.png)

![imagen](https://github.com/ecc360/Using-jenkins-inbound-agent-jdk11/raw/main/images/Screenshot_10.png)
