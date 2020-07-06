decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

reqs:
	ansible-galaxy install -r roles/requirements.yaml

server:
	ansible-playbook compose.yaml -b --ask-become-pass --limit server

servercomp:
	ansible-playbook compose.yaml --tags compose --limit server