provider "aws" {}

resource "aws_vpc" "default_vpc" { 
    cidr_block              = "${var.cidr_block}"
    instance_tenancy        = "${var.instance_tenancy_option}"

    enable_dns_support    = "${var.enable_dns_support}"
    enable_dns_hostnames    =  "${var.enable_dns_hostnames}"
    tags = {
        Name            = "${var.vpc_name}"
        environment     = "${var.environment}"
    }
}
