# starcoder-server

## How to build

```bash
cd starcoder-server
docker build -t starcoder-cpu .
```

## Run container 

```bash
docker run -p 5000:5000 starcoder-cpu
```

## Test

```bash
curl -X POST http://localhost:5000/generate \
  -H "Content-Type: application/json" \
  -d '{"prompt": "def hello_world():"}'
```