## Setup

This repository provides an Ansible setup and various configuration files for your environment.

## Ansible

1. **Install ansible**

To install Ansible on your system, follow these steps:

```bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

2. **Clone repository**

First, create a directory for your projects if it doesn't exist, then clone the repository:

```bash
DOT_DIR=$HOME/ben/webdev/Projects/
mkdir -p $DOT_DIR
cd $DOT_DIR
git clone https://github.com/bpetermann/dotfiles.git
cd dotfiles
```

3. **Run the ansible playbook**

To apply the configurations using Ansible, run the following command:

```bash
ansible-playbook local.yml
```

## Config files

**Using Makefile**

- To set up the configuration files in your home directory, simply run:

```bash
make
```

- To print confirmation messages:

```bash
make print
```
