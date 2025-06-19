
output "output" {
  value = {for k, v in aws_networkmanager_core_network.example : k =>{
    core_network_id = v.id
  }
}
}