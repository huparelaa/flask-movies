# Flask movies API

# How to run it with docker?

1. Build the image
```bash
docker build -t flask-movies-api .
```

2. Run the container
```bash
docker run -d -p 5000:5000 flask-movies-api
```

3. Test it
```bash
curl http://127.0.0.1:5000/api/v1.0/films/
```

# Using kubernetes

1. Create the deployment
```bash
kubectl create -f flask-movies-deployment.yaml
```

2. Create the service
```bash
kubectl create -f flask-movies-service.yaml
```

3. Create deployment for the database
```bash
kubectl create -f postgres-deployment.yaml
```

4. Create service for the database
```bash
kubectl create -f postgres-service.yaml
```
