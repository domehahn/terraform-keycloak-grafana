terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "4.3.1"
    }
    grafana = {
      source  = "grafana/grafana"
      version = "2.3.0"
    }
  }
}
# configure keycloak provider
provider "keycloak" {
  client_id                = "admin-cli"
  username                 = "admin"
  password                 = "admin"
  url                      = "http://keycloak:8080"
  tls_insecure_skip_verify = true
}
# configure grafana provider
provider "grafana" {
  url  = "http://grafana:3000"
  auth = "${var.grafana_admin_username}:${var.grafana_admin_password}"
}