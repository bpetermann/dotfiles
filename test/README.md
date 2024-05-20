## Playground

This setup creates a container based on Ubuntu 20.04, installs Ansible and other necessary tools, and copies the local files into the container.

### Steps to Use

1. **Build the Docker Image**

Build the Docker image from the provided Dockerfile. This step will create an image named my-ansible-image.

```bash
docker build -t my-ansible-image .
```

2. **Run the Docker Container**

Start a container from the newly built image. The --rm flag ensures the container is removed after it exits, and -it allows you to interact with the container's shell.

```bash
docker run --rm -it my-ansible-image /bin/bash
```

3. **Run Ansible Playbook**

Once inside the container, execute the following commands to clone your dotfiles repository and run the Ansible playbook.

```bash
# Define the directory where the dotfiles will be cloned
DOT_DIR=$HOME/ben/webdev/Projects/

# Create the directory if it doesn't exist
mkdir -p $DOT_DIR

# Navigate to the directory
cd $DOT_DIR

# Clone the dotfiles repository
git clone https://github.com/bpetermann/dotfiles.git

# Navigate to the cloned repository
cd dotfiles

# Run the Ansible playbook
ansible-playbook local.yml
```
