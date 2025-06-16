variable "notification_email" {
  description = "Email to receive login notifications"
  type        = string
}

variable "cloudtrail_name" {
  default = "account-activity-trail"
}

variable "s3_bucket_name_prefix" {
  default = "cloudtrail-activity-logs"
}

variable "cloudwatch_log_group_name" {
  type        = string
  description = "Name of the CloudWatch Log Group for CloudTrail"
  default     = "demo-cloudtrail-logs"
}

variable "cloudwatch_log_retention_days" {
  default = 7
}

variable "cloudtrail_role_name" {
  default = "cloudtrail-cloudwatch-role"
}

variable "cloudtrail_policy_name" {
  default = "cloudtrail-cloudwatch-policy"
}

variable "filter_pattern" {
  default = "{ $.eventName = \"ConsoleLogin\" }"
}

variable "metric_name" {
  default = "ConsoleLoginEventCount"
}

variable "metric_namespace" {
  default = "CloudTrailMetrics"
}

variable "alarm_name" {
  default = "ConsoleLoginAlarm"
}

variable "alarm_description" {
  default = "Triggers on AWS Console login attempts"
}

variable "statistic" {
  default = "Sum"
}

variable "period" {
  default = 300
}

variable "evaluation_periods" {
  default = 1
}

variable "threshold" {
  default = 1
}

variable "comparison_operator" {
  default = "GreaterThanOrEqualToThreshold"
}

variable "environment" {
  default = "dev"
}
