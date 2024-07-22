**This project is now archived. It is no longer maintained or supported.**

# Open Review Toolkit Vagrant Image Build

This repository builds a Vagrant VM image used by the [Open Review Toolkit
project](https://github.com/open-review-toolkit/open-review-toolkit). Starting
from a base Ubuntu image, it uses [Ansible](https://www.ansible.com/) to
install the [required dependencies](provisioning/setup.yml) for the Open Review
Toolkit project. Once an image has been built, it will be uploaded to
[Hashicorp's Vagrant box
repository](https://app.vagrantup.com/open-review-toolkit/boxes/open-review-toolkit).
The Open Review Toolkit project downloads this pre-built image, rather than
building it from scratch every time to ensure greater consistency.

## Build and export steps

1. `vagrant box update`
2. `vagrant destroy`
3. `vagrant up`
4. `vagrant ssh`
5. `sudo ./reduce-image-size.sh`
6. `exit`
7. `vagrant package --output v0.x.x.box`
