decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

reqs:
	ansible-galaxy install -r requirements.yaml

server:
	ansible-playbook run.yaml -b --ask-become-pass --vault-password-file .vault-password --limit server

servercomp:
	ansible-playbook run.yaml --tags compose --vault-password-file .vault-password --limit server