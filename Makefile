decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

reqs:
	ansible-galaxy install -r requirements.yaml

server:
	ansible-playbook example2.yaml -b --ask-become-pass --vault-password-file .vault-password --limit server

servercomp:
	ansible-playbook example2.yaml --tags compose --vault-password-file .vault-password --limit server