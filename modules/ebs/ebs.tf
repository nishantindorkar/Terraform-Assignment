resource "aws_ebs_volume" "redis_volumes" {
  count = var.redis_volume_count
  size        = var.volume_size_gb
  availability_zone = var.availability_zones[0]
  tags = {
    Name = format("redis-ebs-volume-%d", count.index + 1)
  }
}

resource "aws_ebs_volume" "jenkins_volumes" {
  count = var.jenkins_volume_count
  size        = var.volume_size_gb
  availability_zone = var.availability_zones[0]
  tags = {
    Name = format("jenkins-ebs-volume-%d", count.index + 1)
  }
}

resource "aws_ebs_volume" "rabbitmq_volume" {
  count             = var.rabbitmq_volume_count
  size              = var.rabbitmq_volume_size_gb
  availability_zone = var.availability_zones[1]  
  tags = {
    Name = "rabbitmq-ebs-volume"
  }
}