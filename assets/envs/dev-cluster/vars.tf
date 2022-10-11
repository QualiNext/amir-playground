variable account {
    type = string
    default = "207801480705"
}

variable fluentd {
    type = bool
    default = true
}

variable prometheus {
    type = bool
    default = true
}

variable elk{
    type = bool
    default = true
}

variable istio{
    type = bool
    default = true
}

variable role_arn{
    type = string
}