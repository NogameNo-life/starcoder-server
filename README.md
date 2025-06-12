# starcoder-gpu

## Prerequisites

```bash
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
```

Checking GPU availability in Docker:

```bash
docker run --rm --gpus all nvidia/cuda:12.2.0-base-ubuntu22.04 nvidia-smi
```

## How to build

```bash
docker build -t starcoder-gpu .
```

## Run container

```bash
docker run --gpus all -p 5000:5000 starcoder-gpu
```

## Test

```bash
curl -X POST http://localhost:5000/generate \
  -H "Content-Type: application/json" \
  -d '{"prompt": "def add(a, b):"}'
```
