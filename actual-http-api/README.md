# Actual HTTP API

Minimal Home Assistant addon wrapper for [Actual Budget HTTP API](https://github.com/jhonderson/actual-http-api).

## Installation

1. Add this repository to Home Assistant
2. Install the addon
3. Configure with your Actual Budget server details
4. Start the addon

## Configuration

### Required

- **actual_server_url**: URL to your Actual Budget server (e.g., `http://homeassistant.local:5006/`)
- **actual_server_password**: Your Actual Budget server password
- **api_key**: Generate with `openssl rand -base64 32`

### Optional

- **port**: API port (default: 5007)

## Usage

Click "Open Web UI" to access the Swagger API documentation, or make API requests:

```bash
curl -H "X-API-Key: your-api-key" http://homeassistant.local:5007/budgets
```
