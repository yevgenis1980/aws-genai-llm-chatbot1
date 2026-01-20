variable "environment" { type = string }
variable "region" { type = string }

variable "enable_rag" {
type = bool
default = true
}

variable "enable_bedrock" {
type = bool
default = true
}

variable "llm_provider" {
type = string
default = "bedrock" # openai, anthropic
}

variable "domain_name" {
type = string
default = null
}
