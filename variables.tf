variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "demo", "perf", "nonprod", "prod"], var.env)
    error_message = "Must be one of the following: dev, qa, stage, prod, demo, perf,nonprod, prod"
  }
  sensitive = false
}

variable "program" {
  type        = string
  description = "The name of the program that the application or project belongs to"
  sensitive   = false
}

variable "account_id" {
  type        = number
  description = "The New Relic account id. If left blank, will use the default specified in the provider"
  default     = null
}

variable "type" {
  type        = string
  description = "The type of notification channel"
  default     = "slack"
  sensitive   = false
}

variable "channel" {
  type        = string
  description = "The name of the channel to send notifications to"
  sensitive   = false
}

variable "url" {
  type        = string
  description = "The slack webhook URL"
  sensitive   = true
}