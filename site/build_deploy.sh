docker build --platform linux/amd64 -t europe-west1-docker.pkg.dev/alejandro-guerra-es/gar-alejandroguerra-site/alejandroguerra-site:latest .
docker push europe-west1-docker.pkg.dev/alejandro-guerra-es/gar-alejandroguerra-site/alejandroguerra-site:latest
gcloud run services update alejandroguerra-site --image="europe-west1-docker.pkg.dev/alejandro-guerra-es/gar-alejandroguerra-site/alejandroguerra-site:latest" --region=europe-west1 --project=alejandro-guerra-es

# docker run --rm -p 8080:8080 europe-west1-docker.pkg.dev/alejandro-guerra-es/gar-alejandroguerra-site/alejandroguerra-site:latest
