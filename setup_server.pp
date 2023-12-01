# Configures a web server for deployment of hbnb.
# Requires sudo privileges.
# Usage: `sudo puppet apply setup_server.pp`

# Nginx configuration file
$nginx_conf = "server {
    # Use server IP as domain name
    server_name keien.tech www.keien.tech;

    # Configure root route of hbnb
    location / {
        proxy_pass http://localhost:5001/hbnb;
    }

    # Serve static content for AirBnB_clone_v4
    location /static {
        proxy_pass http://localhost:5001;
    }

    # Serve hbnb API
    location /api {
        proxy_pass http://localhost:5002/api;
    }

    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/keien.tech/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/keien.tech/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot
}

server {
    if (\$host = www.keien.tech) {
        return 301 https://\$host\$request_uri;
    } # managed by Certbot

    if (\$host = keien.tech) {
        return 301 https://\$host\$request_uri;
    } # managed by Certbot

    listen      80 default_server;
    listen      [::]:80 default_server ipv6only=on;
    server_name keien.tech www.keien.tech;
    return 404; # managed by Certbot
}"

# Install Nginx
package { 'nginx':
  ensure   => 'present',
  provider => 'apt'
}

# Load Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => 'present',
  content => $nginx_conf
}

# Restart Nginx
-> exec { 'systemctl restart nginx':
  path => '/usr/bin/:/usr/local/bin/:/bin/'
}

# Set up /data directory to host API and Flask app
file { '/data':
  ensure  => 'directory'
}

-> file { '/data/api':
  ensure => 'directory'
}

-> file { '/data/models':
  ensure => 'directory'
}

-> file { '/data/web_flask':
  ensure => 'directory'
}

-> exec { 'chown -R ubuntu:ubuntu /data/':
  path => '/usr/bin/:/usr/local/bin/:/bin/'
}