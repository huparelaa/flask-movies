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