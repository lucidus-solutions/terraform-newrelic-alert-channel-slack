resource "newrelic_alert_channel" "this" {
  account_id = var.account_id
  name       = "${var.program}-${var.env}-${var.app}"
  type       = var.type

  config {
    url     = var.url
    channel = var.channel
  }
}
