# Create ConfigMap for web application HTML content
resource "kubernetes_config_map" "app_content" {
  metadata {
    name      = "${var.app_name}-content"
    namespace = var.namespace
    labels    = local.common_labels
  }

  data = {
    "index.html" = <<-EOT
  <!DOCTYPE html>
  <html>
  <head>
    <title>APP_NAME</title>
    <style>
      body { 
        font-family: Arial, sans-serif; 
        display: flex; 
        justify-content: center; 
        align-items: center; 
        height: 100vh; 
        margin: 0; 
      }
      .container { 
        text-align: center;
        font-size: 20px;
        font-family: Arial, sans-serif;
        font-style: bold;
      }
      h1 { 
        color: #333; 
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Welcome to APP_NAME</h1>
      <p>Pod Name: POD_NAME</p>
      <p>Pod IP: POD_IP</p>
    </div>
  </body>
  </html>
  EOT
  }
}

# Create ConfigMap for nginx configuration
resource "kubernetes_config_map" "nginx_config" {
  metadata {
    name      = "${var.app_name}-nginx-config"
    namespace = var.namespace
    labels    = local.common_labels
  }

  data = {
    "default.conf.template" = <<-EOT
  server {
      listen       80;
      server_name  localhost;

      location / {
          root   /usr/share/nginx/html;
          index  index.html index.htm;
          
          # Enable substitution
          sub_filter 'POD_IP' $POD_IP;
          sub_filter 'POD_NAME' $POD_NAME;
          sub_filter 'APP_NAME' $APP_NAME;
          sub_filter_once off;
      }

      error_page   500 502 503 504  /50x.html;
      location = /50x.html {
          root   /usr/share/nginx/html;
      }
  }
  EOT
  }
}