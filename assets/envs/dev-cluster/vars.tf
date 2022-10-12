variable account {
    type = string
}

variable cluster-name {
    type = string
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
