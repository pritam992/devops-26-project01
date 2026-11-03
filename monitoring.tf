
# CloudWatch alarm for EC2 CPU utilization
resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {

  alarm_name        = "${var.instance_name}-cpu-alarm"
  alarm_description = "Alarm when EC2 CPU utilization exceeds 80%"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"

  period    = 300
  statistic = "Average"
  threshold = 80

  dimensions = {
    InstanceId = aws_instance.web.id
  }

  # Treat missing monitoring data as non-breaching
  treat_missing_data = "notBreaching"
}
