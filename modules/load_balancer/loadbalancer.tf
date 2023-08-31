resource "aws_lb" "lb" {
  name               = format("%s-%s-%s", var.appname, var.env, "app")
  internal           = var.internal
  load_balancer_type = var.type
  subnets                    = var.public_subnet_ids
  enable_deletion_protection = false
  security_groups            = [var.security_group_id]
  tags                       = merge(var.tags, { Name = format("%s-%s-%s", var.appname, var.env, "app-lb") })
}

resource "aws_lb_target_group" "lb-tg" {
  name     = "nlb-tg"
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

resource "aws_lb_listener" "lb-listener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.lb-tg.arn
    type             = "forward"
  }
}
