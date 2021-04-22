###
```
alias ansible='docker run --name ansible -v "${PWD}":/work:ro --rm ansible:latest'
```
now, run ansible ansible-playbook playbook.yml 
