# DSFR theme for Self Service Password

This is a graphical theme for [Self Service Password](https://github.com/ltb-project/self-service-password).

[DSFR](https://github.com/GouvernementFR/dsfr) is provided by French Governement.

![Screenshot of Self Service Password with DSFR theme](screenshot-ssp-dsfr.png)

## Installation

### Self Service Password

Deploy Self Service Password on your server.

Minimal version required: **1.8** (or 1.7 with [patch for customized template](https://github.com/ltb-project/self-service-password/pull/1051))

### DSFR framework

The needed files can be installed form [the official git repository](https://github.com/GouvernementFR/dsfr).

Copy them to `htdocs/vendor/dsfr` in the Self Service Password installation directory.

### DSFR theme

Copy these files into the Self Service Password installation directory:
* `template/dsfr/*` : all overriden template files
* `htdocs/css/dsfr/dsfr.css`: custom CSS file

## Theme configuration

In your `config.inc.local.php` adjust these settings:
```php
$custom_tpl_dir = "templates/dsfr";
$background_image = "";
$custom_css = "css/dsfr/dsfr.css";
```

## Development

To test the theme from current git repository, you will need:
* Docker image of Self Service Password
* The DSFR framework file
* A local SSP configuration file with at least theme configuration described above

You can then run the Docker image with local volumes:
```
docker run -p 8080:80 \
  -v /path/to/conf/config.local.inc.php:/var/www/conf/config.inc.local.php \
  -v /path/to/dsfr/dist:/var/www/htdocs/vendor/dsfr \
  -v $PWD/templates/dsfr:/var/www/templates/dsfr \
  -v $PWD/htdocs/css/dsfr:/var/www/htdocs/css/dsfr \
  -it docker.io/ltbproject/self-service-password:latest
```

Then connect on [http://localhost:8080](http://localhost:8080)
