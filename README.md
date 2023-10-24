# contoh-docker

## Prasyarat

* [x] Docker. Untuk mendownload merujuk ke [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/), atau jika menggunakan Mac bisa menggunakan Brew [`brew install docker`](https://formulae.brew.sh/formula/docker)
* [x] Docker Compose. Untuk mendownload merujuk ke [https://docs.docker.com/compose/install/linux/#install-the-plugin-manually](https://docs.docker.com/compose/install/linux/#install-the-plugin-manually), atau jika menggunakan Mac bisa menggunakan Brew [`brew install docker-compose`](https://formulae.brew.sh/formula/docker-compose)

## Membuat Docker Image

```shell
docker build -t nurilhuda3333/test2:latest .
```

## Menjalankan Docker Image

```shell
docker run -v $(pwd):/run nurilhuda3333/test2:latest
```

Command tersebut akan menjalankan Docker container.
Karena dalam `Dockerfile` kita telah membuat command berupa `echo "Belajar RUN" > 'run/README.txt'` untuk dieksekusi,
maka kita menggunakan *Mount Volume* agar semua isi file yang ada di dalam folder `/run` di container ditulis ke *host filesystem*.

Kita akan mendapatkan file berupa `README.txt` di komputer kita yang berisi `Belajar RUN\n` (dengan line ending Line Feed (LF)).

## Menggunakan Docker Compose

Docker Compose mempermudah menjalankan Docker tanpa harus mengetikkan argument pada `docker` berulang kali, seperti _volumes_, _port_, dan lainnya.

Berikut cara menjalankan Dockerfile dengan melakukan `docker build` terhadap `Dockerfile` jika belum pernah dijalankan sebelumnya:

```shell
docker-compose -f docker-compose.yaml up
```

Sama seperti `docker run` di atas, Anda akan mendapatkan file `README.txt`.
