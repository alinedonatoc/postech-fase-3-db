resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "autoservico"
  engine               = "postgres"
  engine_version       = "14.11"
  instance_class       = "db.t3.micro"
  username             = "local"
  password             = var.POSTGRES_DB_PASSWORD
  parameter_group_name = "default.postgres16"
  skip_final_snapshot  = true
}
