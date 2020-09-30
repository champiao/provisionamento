#!/usr/bin/env python3
# coding UTF-8
import os
print("o intuito deste script e provisionar uma maquina linux")
print("\n\n\n\n\n\n")
def menu():
    print("escolha q opcao onde sua distro e baseada: ")
    print("1- Debian (ubuntu, mint, etc...)")
    print("2- RHEL (Fedora, opensuse)")
    print("3- ARCH (Manjaro, Antergos, etc...)")
    print("4- CentOS")
    print("5- Sair")
    opcao = input("\n\n: ")
    #menu de opções das ações do proggrama
    if opcao == "1":
        #provisionamento via shell linux de uma distro baseada em Debian
        print("iniciando instalacoes para base debian")
        os.system("sudo apt update; apt upgrade -y")
        os.system("sudo apt install wine64-development -y; apt install wine64-stable -y")
        os.system("sudo apt install remmina autokey-gtk -y")
        os.system("sudo apt install snapd -y")
        os.system("sudo apt install snap -y")
        os.system("sudo apt install nmap expect -y")
        os.system("sudo systemctl enable snapd")
        os.system("sudo snap install whatsdesk")
        os.system("sudo snap install tusk")
        os.system("sudo snap refresh")
        os.system("sudo apt install ssh")
        os.system("sudo systemctl start sshd; sudo systemctl enable sshd")
    if opcao == "2":
        #provisionamento via shell linux de uma distro baseada em Fedora/RHEL
        print("\n\niniciando instalações base redhat")
        os.system("sudo dnf update; sudo dnf upgrade -y")
        os.system("sudo dnf install remmina wine64-development wine64-stable -y")
        os.system("sudo dnf install snap autokey-gtk nmap -y")
        os.system("sudo dnf update -y")
        os.system("sudo dnf install tilix -y")
        os.system("sudo dnf install nmap expect -y")
        os.system("sudo systemctl start snapd; sudo systemctl enable snapd")
        os.system("sudo snap install whatsdesk")
        os.system("sudo snap install tusk")
        os.system("sudo snap refresh")
        os.system("sudo dnf install ssh -y")
        os.system("sudo systemctl start sshd")
        os.system("sudo systemctl enable sshd")
    if opcao == "3":
        #provisionamento via shell linux de uma distro baseada em ArchLinux
        print("\n\niniciando instalacoes para base arch")
        os.system("sudo pacman -Syyuu")
        os.system("sudo pacman -S nmap --noconfirm")
        os.system("sudo pacman -S remmina expect wine64-development wine64-stable --noconfirm")
        os.system("sudo pacman -S snapd autokey-gtk --noconfirm")
        os.system("sudo systemctl start snapd; sudo systemctl enable snapd")
        os.system("sudo snap install whatsdesk")
        os.system("sudo snap install tusk")
        os.system("sudo snap refresh")
        os.system("sudo pacman -S ssh --noconfirm")
        os.system("sudo systemctl start sshd")
        os.system("sudo systemctl enable sshd")
    if opcao == "4":
        #provisionamento via shell linux de uma distro baseada em RHEL/Centos
        print("\n\niniciando instalacoes para base arch")
        os.system("sudo yum update -y")
        os.system("sudo yum install nmap -y")
        os.system("sudo yum install remmina wine64-development wine64-stable expect -y")
        os.system("sudo yum install snap autokey-gtk -y")
        os.system("sudo systemctl start snapd; sudo systemctl enable snapd")
        os.system("sudo snap install whatsdesk")
        os.system("sudo snap install tusk")
        os.system("sudo snap refresh")
        os.system("sudo yum install ssh -y")
        os.system("sudo systemctl start sshd")
        os.system("sudo systemctl enable sshd")
    if opcao == "5":
        #sair do programa com a opcao 6
        print("\n\nGOOD BYE:\n\n")
        exit()
        menu();
    else :
        #excessão de opções do menu retornando ao mesmo
        print("\n\n\n\nopcao invalida por gentileza escolha uma das a seguir \n\n")
        menu()
    menu()
menu();
