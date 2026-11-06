# Práctica de Automatización con Ansible y Docker

Este proyecto utiliza **Docker** para simular 5 servidores Ubuntu y **Ansible** para automatizar la configuración y el despliegue de aplicaciones en ellos.

## 🚀 Tecnologías utilizadas
* Docker & Docker Compose
* Ansible
* Ubuntu 22.04 (Imagen base)

## 📁 Estructura del Proyecto
* `Dockerfile`: Imagen personalizada de Ubuntu con servidor SSH y usuario preconfigurado con privilegios de sudo.
* `docker-compose.yml`: Define y levanta los 5 contenedores mapeando los puertos locales del 2201 al 2205.
* `ansible.cfg`: Configuración de Ansible para apuntar al inventario y deshabilitar la comprobación estricta de llaves SSH.
* `inventario.ini`: Lista de los 5 servidores y sus variables de conexión.
* `playbook.yml`: Playbook principal con las tareas de configuración.

## 🛠️ Requisitos Previos
* Tener Docker y Docker Desktop instalados y en ejecución.
* Tener Ansible instalado (vía WSL si usas Windows).

## ⚙️ Instrucciones de Uso

1. **Levantar los servidores virtuales**
   Ejecuta el siguiente comando en la raíz del proyecto para construir la imagen y levantar los 5 contenedores en segundo plano:
   ```bash
   docker compose up -d --build
