## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.99.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alarm"></a> [alarm](#module\_alarm) | ./modules/alarm | n/a |
| <a name="module_cloudtrail"></a> [cloudtrail](#module\_cloudtrail) | ./modules/cloudtrail | n/a |
| <a name="module_cloudwatch_logs"></a> [cloudwatch\_logs](#module\_cloudwatch\_logs) | ./modules/cloudwatch_logs | n/a |
| <a name="module_sns"></a> [sns](#module\_sns) | ./modules/sns | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_description"></a> [alarm\_description](#input\_alarm\_description) | n/a | `string` | `"Triggers on AWS Console login attempts"` | no |
| <a name="input_alarm_name"></a> [alarm\_name](#input\_alarm\_name) | n/a | `string` | `"ConsoleLoginAlarm"` | no |
| <a name="input_cloudtrail_name"></a> [cloudtrail\_name](#input\_cloudtrail\_name) | n/a | `string` | `"account-activity-trail"` | no |
| <a name="input_cloudtrail_policy_name"></a> [cloudtrail\_policy\_name](#input\_cloudtrail\_policy\_name) | n/a | `string` | `"cloudtrail-cloudwatch-policy"` | no |
| <a name="input_cloudtrail_role_name"></a> [cloudtrail\_role\_name](#input\_cloudtrail\_role\_name) | n/a | `string` | `"cloudtrail-cloudwatch-role"` | no |
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#input\_cloudwatch\_log\_group\_name) | Name of the CloudWatch Log Group for CloudTrail | `string` | `"demo-cloudtrail-logs"` | no |
| <a name="input_cloudwatch_log_retention_days"></a> [cloudwatch\_log\_retention\_days](#input\_cloudwatch\_log\_retention\_days) | n/a | `number` | `7` | no |
| <a name="input_comparison_operator"></a> [comparison\_operator](#input\_comparison\_operator) | n/a | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_evaluation_periods"></a> [evaluation\_periods](#input\_evaluation\_periods) | n/a | `number` | `1` | no |
| <a name="input_filter_pattern"></a> [filter\_pattern](#input\_filter\_pattern) | n/a | `string` | `"{ $.eventName = \"ConsoleLogin\" }"` | no |
| <a name="input_metric_name"></a> [metric\_name](#input\_metric\_name) | n/a | `string` | `"ConsoleLoginEventCount"` | no |
| <a name="input_metric_namespace"></a> [metric\_namespace](#input\_metric\_namespace) | n/a | `string` | `"CloudTrailMetrics"` | no |
| <a name="input_notification_email"></a> [notification\_email](#input\_notification\_email) | Email to receive login notifications | `string` | n/a | yes |
| <a name="input_period"></a> [period](#input\_period) | n/a | `number` | `300` | no |
| <a name="input_s3_bucket_name_prefix"></a> [s3\_bucket\_name\_prefix](#input\_s3\_bucket\_name\_prefix) | n/a | `string` | `"cloudtrail-activity-logs"` | no |
| <a name="input_statistic"></a> [statistic](#input\_statistic) | n/a | `string` | `"Sum"` | no |
| <a name="input_threshold"></a> [threshold](#input\_threshold) | n/a | `number` | `1` | no |

## Outputs

No outputs.
