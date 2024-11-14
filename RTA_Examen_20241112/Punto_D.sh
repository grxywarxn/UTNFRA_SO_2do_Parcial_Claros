#!/bin/bash

cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/

vim main.yml

#dentro del vim escribí las siguientes tasks

---
# tasks file for 2do_parcial

- debug:
    msg: "Tareas del 2do Parcial"

- name: "Crear directorios en /tmp/2do_parcial/"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0775'
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"

- name: "Agrego archivo datos_alumno.txt desde template"
  template:
    src: template_01.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt


- name: "Agrego archivo datos_equipo.txt desde template"
  template:
    src: template_02.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

- name: "Configuro sudoers para que los usuarios del grupo 2PSupervisores no requieran password al ejecutar sudo"
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'

#:wq    

cd
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/

mkdir templates
cd templates/


cat << EOF > template_01.j2
Nombre: Luis Apellido: Claros
Division: 114
EOF

cat << EOF > template_02.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_facts.distribution }}
Cantidad de Cores: {{ ansible_facts.ansible_processor_cores }}
EOF

cd
cd UTN-FRA_SO_Examenes/202406/ansible/

ansible-playbook -K -i inventory/hosts playbook.yml

#ingresé la contraseña de mi user para que la ultima task no tire error
