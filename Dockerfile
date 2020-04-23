# Build a no-op static executable so the container can be run
# Based on: https://bitbucket.org/rw_grim/docker-noop/
FROM gcc:8 as build
RUN apt-get update && apt-get install -y --no-install-recommends nasm
RUN mkdir /scratch
COPY . /scratch
WORKDIR /scratch
RUN make

FROM scratch
COPY --from=build /scratch/noop64 /noop
ENTRYPOINT ["/noop"]
