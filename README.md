# Grafana on Railway

Deploy Grafana OSS to Railway with one click.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/DavidZha1994/railwayapp-grafana)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/yzha)

## Features

- **Grafana Latest** - Always deploys the latest stable version
- **Zero Config** - Works out of the box with sensible defaults
- **Railway Optimized** - Auto-binds to Railway's `PORT` variable
- **Health Check** - Built-in health monitoring

## Deploy Steps

### Step 1: Deploy Grafana

Click the **Deploy on Railway** button above

### Step 2: Access Grafana

1. Wait 1-2 minutes for the container to start
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
docker compose up -d
```

Open http://localhost:3000 and login with `admin` / `admin`.

## Resources

- [Grafana Documentation](https://grafana.com/docs/grafana/latest/)
- [Railway Documentation](https://docs.railway.app/)
- [Grafana Plugin Directory](https://grafana.com/grafana/plugins/)

## License

MIT License
