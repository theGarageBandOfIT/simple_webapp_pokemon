# simple_webapp_pokemon

A simple _Web_ app that displays a **Pokemon** id card.  

![](https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png)

_Web server_ is derived from the one available in [Google Cloud Run hello image](us-docker.pkg.dev/cloudrun/container/hello).

To build the various `Docker` imags, run:

```bash
$ ./docker-build.sh
```

To run one of these images, execute:

```bash
$ docker run --env PORT=8082 -p 127.0.0.1:8082:8082/tcp myImage:latest
```
