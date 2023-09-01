data "aws_ami" "windows" {
  most_recent = true
  owners      = ["801119661308"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}

resource "aws_instance" "private_instances" {
  count = 1
  ami                    = data.aws_ami.windows.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.private_subnet_ids[0]
  vpc_security_group_ids = [var.security_group_id]

  root_block_device {
    volume_size = 30
  }

  tags = merge(var.tags, { Name = format("private-%s-%s-%s-server-${count.index + 1}", "windows", var.appname, var.env) })
}