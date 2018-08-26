# docker-ubuntu-node-git

A `NodeJS` Docker image based on `docker-ubuntu-node` and bundled with `git` tools, ready to use as a base image for docker based development.

This repository contains a `Dockerfile` used for auto-build on docker hub.

The `ubuntu-node-git` image is published on Docker Hub at that URL

* https://hub.docker.com/r/rbecheras/ubuntu-node-git

The git installation contains:

* a Web UI git client: `ungit`
* a Console UI git client: `lazygit`

See also:

* [Ungit Repository](https://github.com/FredrikNoren/ungit)
* [Lazygit Repository](https://github.com/jesseduffield/lazygit)
* [Git Home](https://git-scm.com)
* [Docker Hub](https://hub.docker.com)
* [Docker Home](https://www.docker.com)


## Git Tags and Docker Tags

This image follows the same versionning rules of its base image `ubuntu-node`.

- Any change on the branch `master` triggers a rebuild on docker hub and updates the docker tag `latest`
- Any new pushed `1.x` git tag triggers a rebuild on docker hub and updates the docker tag `18.04-8`.
    * The first part, `18.04`, gives the major version of `Ubuntu LTS` used as the base image
    * The second part, `8`, gives the major version of `NodeJS LTS` installed in the image
- Any the git tag `2.0.0` will be created and pushed when the next LTS of Ubuntu or Node.js will be released. And this line will be updated.

## License

[MIT License](LICENSE)
