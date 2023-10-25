# Satoru_Gojo_Infra

**Phase 0: install and Test Vagrant**

**Step 1: Install vagrant:**

Use this link https://developer.hashicorp.com/vagrant/downloads

**Step 2: Test it:**
    Start Virtulbox && Create a folder && change dirctory to this folder && create a file with the name Vagrantfile
    past the next content into 
    run the next commands:

    vagrant init bento/ubuntu-22.04
    vagrant up
    !!! if u have a error in one of this tow steps just restart you're machine 
    expected result virtulbox  creat a vm for you (by default the user is vagrant and password is vagrant) 

    if you like you can destroy the vm using vagrant destroy
 


*** if you like to know basics about vagrant ***

https://medium.com/@anouaressabbari/setting-up-a-lab-using-vagrant-and-virtualbox-fffb6673690

### **Phase 1: Setup Infra**

**Step 1: Clone This Repo:**

    ```
    git clone https://github.com/anouaressa/Satoru_Gojo_Infra.git
    ```
    
**Step 2:Start Virtualbox:**

**Step 3: Luch the provisioning:**
    ```
    vagrant up --provider=virtualbox
    ```

