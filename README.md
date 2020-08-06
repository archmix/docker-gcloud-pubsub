# Google Cloud Pub/Sub Emulator

A [Google Cloud Pub/Sub Emulator](https://cloud.google.com/pubsub/docs/emulator) container image. The image is meant to be used for creating an standalone emulator for testing.

## Environment Variables

The following environment variables can be set:

- `PUBSUB_LISTEN_PORT`: The target network port for listening. Default value is `8432`
- `PUBSUB_PROJECT_ID`: The ID of the Google Cloud project for the emulator. Default value is `archmix`

## Creating a Pub/Sub emulator with Docker Compose

The easiest way to create an emulator with this image is by using [Docker Compose](https://docs.docker.com/compose). A ready to use [docker compose file](https://github.com/archmix/docker-gcloud-pubsub/blob/master/docker-compose.yml) is provided.

### Persistence

The image has a volume mounted at `/opt/data`. To maintain states between restarts, mount a volume at this location.
