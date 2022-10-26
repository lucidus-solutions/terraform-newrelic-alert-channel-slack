resource "newrelic_alert_channel" "foo" {
  account_id = var.account_id
  name       = var.name
  type       = var.type

  config {
    url     = var.url
    channel = var.channel
  }
}

variable "account_id" {
  type        = number
  description = ""
  default     = null
}

variable "name" {
  type        = string
  description = ""
}

variable "type" {

}

variable "channel" {

}

variable "url" {
  type        = string
  description = ""
  default     = "https://hooks.slack.com/services/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"
}