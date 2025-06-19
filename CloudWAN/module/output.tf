output "global_network_id" {
  value = aws_networkmanager_global_network.example.id
        #global_network_arn = v.arn

  }


output "global_network_arn" {
  value = aws_networkmanager_global_network.example.arn
}
