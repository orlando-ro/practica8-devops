FROM ubuntu:22.04

# Actualizar e instalar OpenSSH y Sudo
RUN apt-get update && apt-get install -y openssh-server sudo

# Configurar el demonio SSH
RUN mkdir /var/run/sshd

# Crear el usuario "ansible", asignarle la contraseña "ansible" y agregarlo al grupo sudo
RUN useradd -rm -d /home/ansible -s /bin/bash -g root -G sudo -u 1000 ansible
RUN echo 'ansible:ansible' | chpasswd

# Configurar privilegios sudo sin contraseña para el usuario ansible
RUN echo "ansible ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

EXPOSE 22

# Iniciar el servicio SSH y mantener el contenedor en ejecución
CMD ["/usr/sbin/sshd", "-D"]