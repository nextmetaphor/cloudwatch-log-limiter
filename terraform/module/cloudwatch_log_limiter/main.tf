resource "aws_cloudwatch_metric_alarm" "log_rate_alarm" {
  alarm_name          = "LogRateAlarm"
  alarm_description   = "This metric monitors the overall log rate"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  namespace           = "AWS/Logs"
  metric_name         = "IncomingLogEvents"
  period              = 60
  statistic           = "Sum"
  threshold           = 10
  treat_missing_data  = "notBreaching"
}

resource "aws_sns_topic" "log_rate_alarm" {
  name         = "LogRateAlarm"
  display_name = "Topic for log rate alarm"
}