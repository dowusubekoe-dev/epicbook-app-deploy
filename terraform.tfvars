location        = "eastus"
resource_prefix = "epicbookdob-prod"
vm_size         = "Standard_B1s"
admin_username  = "azureuser"
public_key      = "~/.ssh/id_rsa.pub"
db_name         = "bookstore"
db_user         = "epicbook_user"

# db password will be stored as secret in azure devops
