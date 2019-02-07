# invoiceninja-heroku
Ever thought about running InvoiceNinja on heroku? Well, here you go! By deploying this repository to your heroku app, you will be able to host your very own instance of InvoiceNinja.

## Installation
**1. Create your heroku app**
Start by creating your new heroku app. The free tier should be good enough. Afterwards, attach a MySQL addon - again, the free version will be fine.

---
**2. Configure the required buildpacks**
This application makes use of a custom buildpack, which allows you to deploy generic ZIP archives with PHP application code. For this to work, you need to configure the buildpacks for your application as follows:

    https://github.com/janxb/heroku-php-app-buildpack.git
    heroku/php
(Hint: The order is important, place the custom buildpack at the top)

---
**3. Create the required environment variables**
| **Property Name** | **Example Value** | **Description** |
| -- | -- | -- |
| `APP_ARCHIVE` | `https://github.com/invoiceninja/invoiceninja/archive/v4.5.9.zip` | Release ZIP-file URL, manually increment for each update |
| `APP_KEY` | `SomeRandomStringSomeRandomString` | Random encryption string, needs to be 32 bits long |
| `APP_URL` | `https://invoices.example.com` | URL of your InvoiceNinja instance |
| `DB_DATABASE` | `heroku_XXXXXXX` | MySQL database name |
| `DB_HOST` | `eu-cdbr-west-02.cleardb.net` | MySQL database host |
| `DB_PASSWORD` | `XXXXXXX` | MySQL database password |
| `DB_USERNAME` | `u214235` | MySQL database password |
| `REQUIRE_HTTPS` | `true` | Should the application always redirect to HTTPS |
| `TRUSTED_PROXIES` | `0.0.0.0/0` | Always trust the incoming proxy server on heroku |