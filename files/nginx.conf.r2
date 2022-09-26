server {
  listen 80;

  root {{ nginx_directory }}/{{ site_files }};
  index index.html index.htm;

  server_name [your_server_ip];
  
  location / {
   default_type "text/html";
   try_files $uri.html $uri $uri/ =404;
  }
}
