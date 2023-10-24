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
docker run -p 5000:5000 nurilhuda3333/test2:latest
```

Command tersebut akan menjalankan Python script di dalam Docker container.

Akan muncul log seperti berikut:

```shell
 * Serving Flask app 'server'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5000
 * Running on http://192.168.215.2:5000
Press CTRL+C to quit

```

Silahkan akses [http://192.168.215.2:5000](http://192.168.215.2:5000) atau alamat yang muncul pada log di terminal Anda.

## Menggunakan Docker Compose

Docker Compose mempermudah menjalankan Docker tanpa harus mengetikkan argument pada `docker` berulang kali, seperti _volumes_, _port_, dan lainnya.

Pertama, pastikan Anda _build image_ terlebih dahulu,

```shell
docker build -t nurilhuda3333/test2:latest .
```

Command tersebut memastikan bahwa sudah ada image `nurilhuda3333/test2:latest` di komputer Anda.

Kemudian jalankan.

```shell
docker-compose -f docker-compose.yaml up
```

