# Grafana on Railway

Deploy Grafana OSS to Railway with one click. Metadata persisted in PostgreSQL — dashboards, data sources, and alerts survive every redeploy.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/DavidZha1994/railwayapp-grafana)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/yzha)

## Features

- **Grafana Latest** - Always deploys the latest stable version
- **PostgreSQL Persistence** - Dashboards & config survive redeploys
- **Railway Optimized** - Auto-binds PORT and DATABASE_URL
- **Health Check** - Built-in container health monitoring

## Deploy Steps

### Step 1: Deploy Grafana

Click the **Deploy on Railway** button above

### Step 2: Add PostgreSQL

1. In your Railway project, click **+ New**
2. Select **Database** → **Add PostgreSQL**

### Step 3: Connect Database

1. Click on your **Grafana** service
2. Go to **Variables** tab
3. Add: `DATABASE_URL` = `${{Postgres.DATABASE_URL}}`
4. Redeploy the service

### Step 4: Access Grafana

1. Wait 1-2 minutes for initialization
2. Open your Grafana service URL
3. Login with `admin` / `admin`

## Default Credentials

| Username | Password |
|----------|----------|
| `admin`  | `admin`  |

> **Security**: Change the default password after first login!

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `DATABASE_URL` | Required | `${{Postgres.DATABASE_URL}}` |
| `PORT` | `3000` | Server port (auto-set by Railway) |
| `GF_SECURITY_ADMIN_USER` | `admin` | Admin username |
| `GF_SECURITY_ADMIN_PASSWORD` | `admin` | Admin password |
| `GF_DEFAULT_INSTANCE_NAME` | `my-instance` | Instance name |
| `GF_INSTALL_PLUGINS` | - | Comma-separated plugin list |

## Installing Plugins

Set the `GF_INSTALL_PLUGINS` environment variable:

```
GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource
```

See [Grafana Plugin Directory](https://grafana.com/grafana/plugins/) for available plugins.

## Local Development

```bash
cp .env.example .env
docker compose up -d
```

Open http://localhost:3000 and login with `admin` / `admin`.

PostgreSQL data persists in a Docker named volume across restarts.

## Resources

- [Grafana Documentation](https://grafana.com/docs/grafana/latest/)
- [Railway Documentation](https://docs.railway.app/)
- [Grafana Plugin Directory](https://grafana.com/grafana/plugins/)

## License

MIT License
