## Playground

Sets up a container based on Ubuntu 20.04, installs Ansible and other necessary tools, and copies the local files into the container. 

1. Build docker

```bash
docker build -t my-ansible-image .
```

2. Run docker

```bash
docker run --rm -it my-ansible-image /bin/bash
```

3. Copy the following script

```bash
DOT_DIR=$HOME/ben/webdev/Projects/
mkdir -p $DOT_DIR
cd $DOT_DIR
git clone https://github.com/bpetermann/dotfiles.git
cd dotfiles
ansible-playbook local.yml
```
