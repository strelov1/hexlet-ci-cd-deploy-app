deploy-local:
	ansible-playbook main.yml -i local.ini --extra-vars "ENV=dev"  --ask-vault-pass

deploy:
	ansible-playbook main.yml -i host.ini --tags "deploy" --extra-vars "ENV=dev VERSION=2" --ask-vault-pass

rollback:
	ansible-playbook main.yml -i host.ini --tags "rollback" --extra-vars "ENV=dev VERSION=1" --ask-vault-pass

install:
	ansible-playbook main.yml -i host.ini --tags "install" --extra-vars "ENV=dev" --ask-vault-pass