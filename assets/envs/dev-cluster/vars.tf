variable account {
    type = string
}

variable cluster_name {
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
