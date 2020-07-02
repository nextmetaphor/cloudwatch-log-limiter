module "cloudwatch_log_limiter" {
  source = "../module/cloudwatch_log_limiter"
}

resource "aws_cloudwatch_log_group" "sample" {
  name = "sample_log_group"
}

resource "aws_cloudwatch_log_stream" "sample" {
  log_group_name = aws_cloudwatch_log_group.sample.name
  name           = "sample_log_stream"
}