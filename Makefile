install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml
