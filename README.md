## Setup

1. **Install ansible**

```bash
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

2. **Clone repository**

```bash
DOT_DIR=$HOME/ben/webdev/Projects/
mkdir -p $DOT_DIR
cd $DOT_DIR
git clone https://github.com/bpetermann/dotfiles.git
cd dotfiles
```

3. **Run the ansible playbook**

```bash
$ ansible-playbook local.yml
```
