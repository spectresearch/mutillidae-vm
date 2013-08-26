mutillidae-vm
=============

It's a virtual machine used by students at UTFSM to practice their security skills in a well-controlled environment. It's based on Ubuntu to serve  [Mutillidae](http://www.irongeek.com/i.php?page=mutillidae/mutillidae-deliberately-vulnerable-php-owasp-top-10) web application along with some tools to audit it.

Requirements
------------

* [rvm](https://rvm.io/rvm/install)
* [vagrant](http://www.vagrantup.com/)
* [virtualbox](https://www.virtualbox.org/)

Installation steps
------------------

1. Install rvm according to your operating system.
2. Install virtualbox for your operating system.
3. Download vagrant for your operating system.
4. Clone this repository (`git clone git@github.com:spectresearch/mutillidae-vm.git`)
5. Enter the cloned directory (`cd mutillidae-vm`)
6. Create a gemset for this project (i.e. `rvm gemset create vagrant`)
7. Use that gemset (`rvm gemset use vagrant`)
8. Install dependencies (`bundle install`)
9. Install vagrant berkshelf plugin (`vagrant plugin install vagrant-berkshelf`)
10. Setup virtual machine (`vagrant up`)
11. You can access from your local machine through the browser at (`firefox http://localhost:4000`) or you can halt virtual machine (`vagrant halt`), open VirtualBox manager (`virtualbox`) and run the created virtual machine taking advantage of X and the tools installed by default in it (credentials are `vagrant/vagrant`).
