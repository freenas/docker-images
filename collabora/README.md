## Collabora Online

collabora/code - Can be used to link with NextCloud for online editing.

https://www.collaboraoffice.com/code/

LibreOffice Online is great for home use as well as enjoying the latest translations and developments. CODE is a somewhat more conservative version – but still a development edition – of LibreOffice Online, and is built around the Collabora Office core. CODE is perfect for home users that want to start to run their own online Office Suite.The LibreOffice Online Docker Image docker image is a very regularly updated snapshot of the latest master build of both online and LibreOffice that has passed both the LibreOffice and online automated testing. CODE builds on the other hand, are released on average once a month and announced on this website.

## Setting up Nginx Reverse Proxy

```
server {
    listen       443 ssl;
    server_name  collabora.example.com;

    ssl_certificate /path/to/ssl_certificate;
    ssl_certificate_key /path/to/ssl_certificate_key;

    # static files
    location ^~ /loleaflet {
        proxy_pass https://localhost:9980;
        proxy_set_header Host $http_host;
    }

    # WOPI discovery URL
    location ^~ /hosting/discovery {
        proxy_pass https://localhost:9980;
        proxy_set_header Host $http_host;
    }

    # Main websocket
    location ~ /lool/(.*)/ws$ {
        proxy_pass https://localhost:9980;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "Upgrade";
        proxy_set_header Host $http_host;
        proxy_read_timeout 36000s;
    }

    # Admin Console websocket
    location ^~ /lool/adminws {
        proxy_pass https://localhost:9980;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "Upgrade";
        proxy_set_header Host $http_host;
        proxy_read_timeout 36000s;
    }

    # download, presentation and image upload
    location ^~ /lool {
        proxy_pass https://localhost:9980;
        proxy_set_header Host $http_host;
    }
}
```

## Install the Nextcloud app

- Go to the Apps section and choose "Productivity"
- Install the "Collabora Online" app
- In Admin -> Collabora Online specific the server you have setup before (https://office.example.com)
