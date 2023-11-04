# Create an Ansible Vault file '~/vault-credentials.yml' containing three key/value pairs.
# Create a text file '~/my-vault-pass' containing a password.
# Ansible Vault uses symmetric encryption - the same password both encrypts and decrypts the content.
#
# An alternative to an encrypted file is inline encryption.
# https://docs.ansible.com/ansible/latest/vault_guide/vault_encrypting_content.html
# The password in this example is encrypted by ansible vault. 
#    ansible_become_password: !vault |
#          $ANSIBLE_VAULT;1.1;AES256
#          66386439653236336462626566653063336164663966303231363934653561363964363833313662
#          6431626536303530376336343832656537303632313433360a626438346336353331386135323734
#          62656361653630373231613662633962316233633936396165386439616533353965373339616234
#          3430613539666330390a313736323265656432366236633330313963326365653937323833366536
#          34623731376664623134383463316265643436343438623266623965636363326136
# Command to make this encrypted value is
#   ansible-vault encrypt_string 

add_secrets_to_vault () {
     # Create a new vault file.
     touch ~/vault-credentials.yml
     cat << EOF >>  ~/vault-credentials.yml
key1: "value 1"
key2: "value 2"
ansible_become_password: "Password;1"
EOF
     # Encrypt the new file. 
     echo 'my vault password' >  ~/my-vault-pass
     ansible-vault encrypt --vault-pass-file ~/my-vault-pass ~/vault-credentials.yml
}

add_secrets_to_vault

