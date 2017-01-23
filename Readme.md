# Vagrant based dev box

Create an virtual Ubuntu box for developing of docker based solutions.

## Install guest additions

Run the following command, to install VirtualBox guest additions in vagrant
boxes.

    vagrant plugin install vagrant-vbguest

If you have already installed the box, you may need to restart the machine.

## Make an SSH connection

### Unix

In the folder where you checked out the project, type "vagrant ssh"

### Windows

Creating a connection in Windows is a little more work.

#### Create a PuTTY enabled private key.

You need a private key in the .ppk format to connect.

Vagrant creates a private key for you, it is located in the folder "devbox/.vagrant/machines/default/virtualbox/private_key". But thus is not in the right format and must be converted.

 1. Start the app "PuTTYGen"
 2. Load the private key
 3. Click "Save private key". The app will warn you about missing passphrase, just ignore it.

#### Create a PuTTY connection

Start putty, and set the followin configurations:

Session menu:
 * Host: 127.0.0.1
 * Port: 2222
Connection|Data menu:
 * Auto-login username: ubuntu
Connection|SSH|Auth menu:
 * Check Allow agent forwarding (see below)
 * Private key file for authentication: Load your .ppk file (last step)

Go back to the session menu, give the session a name, and click "save"

_Agent forwarding_: If you have a private key setup on you host machine, and
pageant.exe started with the file loaded, then enabling agent forwarding will
allow you to use those credentials from within the devbox, e.g. when accessing
private git repositories.

#### In the event of recreating the virtual machine

If you have destroyed and recreated the virtual machine, it should be enough to regenerate the .ppk file
