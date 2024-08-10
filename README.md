# WIP

----

# Zerops x Mattermost

[Mattermost](https://mattermost.com/) is self-hosted communication platform. This recipe showcases how to properly setup and run Mattermost on [Zerops](https://zerops.io).


![Mattermost](https://github.com/zeropsio/recipe-shared-assets/blob/main/covers/svg/cover-mattermost.svg)

## Deploy on Zerops

You can either click the deploy button to deploy directly on Zerops, or manually copy the [import yaml](https://github.com/zeropsio/recipe-mattermost/blob/main/zerops-project-import.yml) to the import dialog in the Zerops app.

[![Deploy on Zerops](https://github.com/zeropsio/recipe-shared-assets/blob/main/deploy-button/green/deploy-button.svg)](https://app.zerops.io/recipe/mattermost)

## Recipe features

- Zerops **PostgreSQL 16** service as database
- Zerops **Object Storage** (S3 compatible) service as file system
- Utilization of Zerops built-in **environment variables** system
- Healthcheck setup

## How to use installed recipe in Zerops GUI

- Wait till the moment the recipe's services are installed and initialized.
- Open the auto-generated subdomain URL available for the `mattermost` service.
- ...

## Production vs. testing or small traffic mode

The difference may come down to:

- Use the highly available version of the PostgreSQL database (change `mode` from `NON_HA` to `HA` in [zerops.yml](https://github.com/zeropsio/recipe-ghost/blob/main/zerops.yml), `pgdb` service section)

Need help setting your project up? Join [Zerops Discord community](https://discord.com/invite/WDvCZ54).
