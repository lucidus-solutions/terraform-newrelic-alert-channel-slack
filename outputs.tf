output "id" {
  value       = newrelic_alert_channel.this.id
  description = "The id of the slack channel new relic resource"
  sensitive   = false
}