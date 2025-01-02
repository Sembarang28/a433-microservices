# 1. Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# 2. Melihat daftar Docker image di lokal
docker images

# 3. Mengubah nama (tag) image agar sesuai dengan format GitHub Container Registry
docker tag item-app:v1 ghcr.io/sembarang28/item-app/item-app:v1

# 4. Login ke GitHub Container Registry
echo $GITHUB_TOKEN | docker login ghcr.io -u sembarang28 --password-stdin

# 5. Mengunggah image ke GitHub Container Registry
docker push ghcr.io/sembarang28/item-app/item-app:v1