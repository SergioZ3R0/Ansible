# Proyecto de Ansible

## Descripción
Este proyecto de Ansible está diseñado para [describir el propósito del proyecto, por ejemplo, automatizar la configuración de servidores web].

## Estructura del Proyecto
- `ansible.cfg`: Archivo de configuración de Ansible.
- `inventory/hosts`: Archivo de inventario que define los hosts y grupos de hosts.
- `playbooks/`: Directorio que contiene los playbooks de Ansible.
  - `site.yml`: Playbook principal.
  - `other_playbook.yml`: Otro playbook de ejemplo.
- `roles/`: Directorio que contiene los roles de Ansible.
  - `role1/`: Primer rol.
  - `role2/`: Segundo rol.

## Requisitos
- Ansible 2.9 o superior.
- Acceso SSH a los servidores que se van a gestionar.

## Instalación
1. Clona el repositorio:
    ```bash
    git clone https://github.com/SergioITB/tu-repo.git
    ```
2. Navega al directorio del proyecto:
    ```bash
    cd tu-repo
    ```

## Uso
1. Edita el archivo `inventory/hosts` para definir tus hosts.
2. Ejecuta el playbook principal:
    ```bash
    ansible-playbook playbooks/site.yml -i inventory/hosts
    ```

## Contribuir
1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature-branch`).
3. Realiza tus cambios (`git commit -am 'Añadir nueva característica'`).
4. Sube los cambios a la rama (`git push origin feature-branch`).
5. Crea un nuevo Pull Request.

## Licencia
Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo `LICENSE` para más detalles.
