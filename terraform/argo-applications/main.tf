### Apply after cluster creation.
resource "kubernetes_manifest" "bluered_application" {
  manifest = yamldecode(file("${path.module}../../meta/bluered.yaml"))
}

resource "kubernetes_manifest" "reloader_application" {
  manifest = yamldecode(file("${path.module}../../meta/reloader.yaml"))
}