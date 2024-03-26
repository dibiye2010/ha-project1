# Output the ALB DNS Name
output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "web_servers_public_ip" {
  value = aws_instance.web_servers[*].public_ip
}

output "web_servers_public_dns" {
  value = aws_instance.web_servers[*].public_dns
}