- hosts: ubuntu
  tasks:
          - name: install apache2
            apt: name=apache2 state=latest
            notify:
                    - start apache2
