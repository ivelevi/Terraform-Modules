variable "policy_name" {
  description = "The name of the policy. If omitted, policy_prefix is used"
  default     = ""
  type        = string

  validation {
    condition     = length(var.policy_name) <= 64
    error_message = "The policy_name, when informed, cannot be longer than 64 characters"
  }
}

variable "policy_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Ignored when policy_name is informed"
  default     = "Policy-"
  type        = string

  validation {
    condition     = length(var.policy_prefix) <= 32
    error_message = "The policy_prefix cannot be longer than 32 characters"
  }
}

variable "policy_description" {
  description = "The description of the policy"
  default     = ""
  type        = string
}

variable "policy_document" {
  description = "The policy document. This is a JSON formatted string"
  type        = string

  validation {
    condition     = length(replace(var.policy_document, "/\\s+/", "")) <= 6144
    error_message = "The policy_document cannot be longer than 6144 characters"
  }
}

variable "policy_path" {
  description = "The IAM policy path"
  default     = "/"
  type        = string
}
