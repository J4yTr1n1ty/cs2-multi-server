# CS2 Multi Server

This is a multi server docker image for hosting multiple CS2 servers on one machine.

## Features

- Persistent server install
- Preinstalled Metamod
- Preinstalled MatchZy for tournament management

## Usage

### Build the Docker image

```bash
docker build --target=bookworm-base -t ghcr.io/j4ytr1n1ty/cs2-multi-server:latest .
```

### Run using Docker compose

Navigate to the `examples` directory and create a directory named `cs2-server` and make sure to change ownership to the unprivileged user.

```bash
mkdir cs2-server
chown 1000:1000 cs2-server
```

After this, you can run the server using

```bash
docker compose up
```

### In development

You can use the `docker-compose.yml` in the `image` directory. Just run `docker compose up --build` to always rebuild the docker image to the current state.
