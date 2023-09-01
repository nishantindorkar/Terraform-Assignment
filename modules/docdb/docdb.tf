resource "aws_docdb_cluster" "docdb" {
  count             = var.quantity
  cluster_identifier = "my-docdb-cluster-${count.index + 1}"
  availability_zones = var.availability_zones
  engine            = "docdb"
  engine_version    = "4.0"
  skip_final_snapshot = true

  master_username   = "master"
  master_password   = "Master#123"

  tags = {
    Name = "docdb-cluster-${count.index + 1}"
  }
}

resource "aws_docdb_cluster_instance" "docdb_instance" {
  count             = var.quantity
  cluster_identifier = aws_docdb_cluster.docdb[count.index].id
  instance_class    = var.db_instance_type
}
