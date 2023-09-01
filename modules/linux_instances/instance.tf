data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    #ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "private_instances" {
  count                  = length(var.private_instance_count) 
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.private_subnet_ids[count.index] 
  vpc_security_group_ids = [var.security_group_id]
  root_block_device {
    volume_size = 30
  }
  tags = merge(var.tags,{Name = format("private-%s-%s-%s-server-${count.index + 1}","linux",var.appname,var.env)})
}