# BitByteServer

## Checking the Server

To ensure the server is running correctly, use the following commands:

### 1. Check if the Server is Running
```bash
curl http://localhost:5001/health
```
Expected response:
```json
{"status": "ok", "model_available": true}
```

### 2. Test the Prediction Endpoint
```bash
curl -X POST http://localhost:5001/predict \
-H "Content-Type: application/json" \
-d '{"dayOfWeek": 2, "hourOfDay": 14, "minuteOfHour": 30, "device_activity": 0.7, "device_batteryLevel": 0.8}'
```
Expected response:
```json
{"prediction": 123.45, "status": "success"}
```

### 3. Check Logs (if running in production)
- **Application Logs**:
  ```bash
  sudo journalctl -u ml-server
  ```
- **Nginx Logs**:
  ```bash
  sudo tail -f /var/log/nginx/access.log
  sudo tail -f /var/log/nginx/error.log
  ```

### 4. Check Port Usage
```bash
lsof -i:5001
```
If the port is in use, stop the conflicting process:
```bash
kill <PID>
```

## Server Instructions

For detailed instructions on setting up and checking the server, refer to the [Server README](Server/README.md).