# --------------------------------------------------
# CLOUDWATCH CPU ALARM
# --------------------------------------------------

resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {

  alarm_name        = "${var.instance_name}-cpu-alarm"
  alarm_description = "EC2 CPU utilization exceeds 40%"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"

  period    = 300
  statistic = "Average"
  threshold = 40

  dimensions = {
    InstanceId = aws_instance.web.id
  }

  treat_missing_data = "notBreaching"
}