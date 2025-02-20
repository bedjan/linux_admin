# Ansible – Automatizace serverových úloh

Ansible je nástroj pro správu konfigurace a automatizaci serverových operací.

## 🛠 Instalace Ansible
```bash
# Debian/Ubuntu
sudo apt install ansible

# Fedora
sudo dnf install ansible

# Arch Linux
sudo pacman -S ansible
```

## 📦 Použití Ansible
```bash
ansible all -m ping -i inventory  # Otestování připojení k serverům
ansible-playbook playbook.yml  # Spuštění Ansible playbooku
```

## 📦 Příklad `inventory` souboru
```
[webservers]
server1 ansible_host=192.168.1.10 ansible_user=root
server2 ansible_host=192.168.1.11 ansible_user=root
```

## 📦 Příklad `playbook.yml`
```yaml
- name: Instalace Apache
  hosts: webservers
  tasks:
    - name: Instalace Apache
      apt:
        name: apache2
        state: present
```

## 🔄 Alternativy k Ansible
- **Puppet** – Pokročilejší nástroj pro správu konfigurace.
- **Chef** – Automatizace serverové konfigurace.

---
💡 **Tip:** Ansible umožňuje správu serverů bez potřeby agenta, stačí SSH přístup.
