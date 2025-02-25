output "frontend_alb_dns_name" {
  description = "The DNS name of the frontend Application Load Balancer"
  value       = aws_lb.frontend_lb.dns_name
}

output "backend_alb_dns_name" {
  description = "The DNS name of the backend Application Load Balancer"
  value       = aws_lb.backend_lb.dns_name
}