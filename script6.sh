#!/bin/bash
echo "=========INSTALANDO O KVM=========="
sudo apt-get update -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm
echo 'Se o resultado apresentado abaixo for semelhante a 
Resultado:
kvm:x:NUMERO_QUALQUER:SEU_USUARIO
significa que o recurso foi instalado corretamente.'
echo 'Resultado:'
grep kvm /etc/group