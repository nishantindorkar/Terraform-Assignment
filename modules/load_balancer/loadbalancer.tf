resource "aws_lb" "network" {
  name               = var.nlb_name
  internal           = false
  load_balancer_type = "network"

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "example" {
  name     = "example"
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
  }
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.network.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.example.arn
    type             = "forward"
  }
}