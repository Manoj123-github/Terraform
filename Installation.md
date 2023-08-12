# installation process

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform

# ubuntu/Debian OS

# install HashiCorp's Debian package repository. 
<pre>
  
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

</pre>
  
# Install the HashiCorp GPG key.

<pre>
  
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

</pre>

# Verify the key's fingerprint.

<pre>
  
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

</pre>
# Add the official HashiCorp repository to your system

<pre>
  
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
  
</pre>
  
# Install Terraform 

<pre>
  
sudo apt update
sudo apt-get install terraform

</pre>
