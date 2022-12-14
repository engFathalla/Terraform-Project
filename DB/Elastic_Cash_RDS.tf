resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  subnet_group_name = aws_elasticache_subnet_group.elasticache_pvt_group.name
  engine_version       = "3.2.10"
  port                 = 6379
}

resource "aws_elasticache_subnet_group" "elasticache_pvt_group" {
  name       = "main"
  subnet_ids = ["${var.private_sub_1}", "${var.private_sub_2}"]

  tags = {
    Name = "My Private ElastiCache subnet group"
  }
}