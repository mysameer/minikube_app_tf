resource "kubernetes_deployment" "getting-started" {
  metadata {
    name = "terraform-getting-started"
    labels = {
      test = "getting-started-deployment"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "getting-started"
      }
    }

    template {
      metadata {
        labels = {
          test = "getting-started"
        }
      }

      spec {
        container {
          image = "sameerahmedbalaganur/gsapp"
          name  = "getting-started"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "getting-started-service" {
  metadata {
    name = "getting-started-service"
  }
  spec {
    selector = {
      test = "getting-started"
    }
    port {
      port        = 3000
      target_port = 3000
      node_port = 30029
    }

    type = "NodePort"
  }
}