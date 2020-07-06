decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

reqs:
	ansible-galaxy install -r requirements.yaml

server:
	ansible-playbook run.yaml -b --ask-become-pass --limit server

servercomp:
	ansible-playbook run.yaml --tags compose --limit server