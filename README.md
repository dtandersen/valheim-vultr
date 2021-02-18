# vultr valheim server

Runs valheim on vultr

# config.auto.tfvars

put vultr api key here

```
# vultr
vultr_api_key = "secret"
ssh_key_ids = [
  "e1923b30-0801-4374-ac07-278f6cbf284a"
]

# server
world = "default"
name = "Valheim on Vultr"
password = "secret"
```

see:

vultr-cli plans list
vultr-cli regions list
vultr-cli os list
