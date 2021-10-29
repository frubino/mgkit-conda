# MGKit release to Anaconda.org

This is a set of script to build MGKit packages for Conda, to be uploaded on Anaconda.org on the `frubino` channel. The version of MGKit build is based on the `MGKIT_VERSION` variable in the scripts, used to clone the selected tag from the the GitHub repository.

# OSX Builds
The file `build-local.sh` builds the packges for Mac OS X
## Requirements
An enviroment where `conda-build`, `conda-verify` and `anaconda-client` are installed. Also a compiler for the C extension (CLang in XCode was tested)

# Linux Builds
The file `build-docker.sh` builds the packges for Linux
## Requirements
Docker needs to be installed. Requires about 1-2GB of RAM.