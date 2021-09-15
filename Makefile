install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault-password

encrypt:
	ansible-vault encrypt ./group_vars/all/vault.yml --vault-password-file vault-password

decrypt:
	ansible-vault decrypt ./group_vars/all/vault.yml --vault-password-file vault-password
