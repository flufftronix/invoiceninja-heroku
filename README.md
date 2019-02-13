


# invoiceninja-heroku
Ever thought about running InvoiceNinja on heroku? Well, here you go! By deploying this repository to your heroku app, you will be able to host your very own instance of InvoiceNinja.

## Installation
**1. Create your heroku app**

Start by creating your new heroku app. The free tier should be good enough. Afterwards, attach a MySQL addon - again, the free version will be fine.

<br>

**2. Configure the required buildpacks**

This application makes use of a custom buildpack, which allows you to deploy generic ZIP archives with PHP application code. For this to work, you need to configure the buildpacks for your application as follows:

    https://github.com/janxb/heroku-zipped-app-buildpack.git
    heroku/php
*(Hint: The order is important, place the custom buildpack at the top)*

<br>

**3. Create the required environment variables**

|Property Name|Example Value|Description|
|---|---|---|
| `APP_ARCHIVE` | `https://github.com/invoiceninja/invoiceninja/archive/v4.5.9.zip` | Release ZIP-file URL, manually increment for each update |
| `APP_KEY` | `SomeRandomStringSomeRandomString` | Random encryption string, needs to be 32 bit long |
| `APP_URL` | `https://invoices.example.com` | URL of your InvoiceNinja instance |
| `DB_HOST` | `eu-cdbr-west-02.cleardb.net` | MySQL database host |
| `DB_DATABASE` |  | MySQL database name |
| `DB_USERNAME` |  | MySQL database user |
| `DB_PASSWORD` |  | MySQL database password |
| `REQUIRE_HTTPS` | `true` | Redirect all requests to HTTPS |
| `TRUSTED_PROXIES` | `0.0.0.0/0` | Always trust the incoming proxy server on heroku |
| `PHANTOMJS_CLOUD_KEY` | `a-demo-key-with-low-quota-per-ip-address` | Use the PhantomJS cloud service for generating PDFs |
| `LOG` | `errorlog` | Send appliation log messages to heroku log stream |


## Updates

Because heroku does not offer persistent application storage, your InvoiceNinja application is not able to automatically update itself. Instead, you have to edit the `APP_ARCHIVE` property manually and then trigger a new deployment in the heroku web interface. This should take no longer than a few minutes. 

*(Hint: You will receive a warning message in InvoiceNinja if a new release version is available.)*
