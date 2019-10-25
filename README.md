# Kubernetes Workshop

Instruções para rodar o laboratório do workshop

## Pre-reqs

1. Vagrant - https://www.vagrantup.com/
2. VirtualBox - https://www.virtualbox.org/

### Somente para máquinas com Windows

1. Git Bash - https://git-scm.com/

## Plugins Vagrant

```
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-disksize
```

## Instruções (Linux/MacOS)

1. Abra o seu terminal
2. Clone este repositório (`git clone https://github.com/amioranza/kubernetes-workshop.git`)
3. Entre no diretório criado pelo git clone (kubernetes-workshop) (`cd kubernetes-workshop`)
4. Execute `vagrant up`
5. Espere até a mensagem de `done. 😎` apareça.
6. Exeute `vagrant ssh` para acessar a máquina virtual criada.
7. Se até aqui tudo está OK você está pronto para o workshop, aproveite!

## Instruções (Windows)

!!! IMPORTANTE !!!

Este lab não dfoi testatdo com o WSL/2, portanto não tente executá-lo através deste recurso.

1. Clique em Iniciar e pesquise por bash, encontre o Git Bash e execute ele
1. Clone este repositório (`git clone https://github.com/amioranza/kubernetes-workshop.git`)
2. Entre no diretório criado pelo git clone (kubernetes-workshop) (`cd kubernetes-workshop`)
3. Execute `vagrant up`
4. Espere até a mensagem de `done. 😎` apareça.
5. Exeute `vagrant ssh` para acessar a máquina virtual criada.
6. Se até aqui tudo está OK você está pronto para o workshop, aproveite!
