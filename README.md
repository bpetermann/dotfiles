## Setup

This repository contains an Ansible setup and various configuration files to customize a new machine and get it up and running quickly.

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

Run the following script to create a directory for your projects if it doesn't already exist, then clone the repository and cd into it: 

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

4. **This will currently setup the following tasks**
   
- setup bash.yml    
- setup git.yml    
- setup node.yml
- setup npm-packages.yml

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

## Test

The test folder contains a Dockerfile for a Ubuntu focal installation that can be used to test this setup
