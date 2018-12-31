# Varaamo authentication server


## Description

Authentication server used for the Varaamo service.  
Implemented using the Keycloak Docker image, with slightly modified themes.  
Keycloak's user and configuration data is persisted through a Docker volume (default location: `/tmp/keycloak/data`)  
Note that since the official Docker image for Keycloak is run under the UID: 1000, make sure that the volume mount point is owned by UID: 1000

## Installation

Running this project requires Docker, install it using the most convenient method for your environment.  

  - Make a copy of the `env_template` file and save it as `.env`.  
  - Edit `.env` according to your environment.  
  - Use the attached shell files to build and run the docker image.  

The container exposes port 8080 through which you can access the administration console.  
For authentication redirects to work, Keycloak needs to be accessible through a real URL, so usage of a proxy such as `nginx` is recommended.

## Usage

Keycloak is configured through the administration interface, changes in configuration are persisted through the aforementioned volume.  
Currently, the Varaamo resource server (Respa) is designed to authenticate users via JWT. Keycloak should be configured accordingly.  
As Keycloak configuration varies drastically in different usage domains, an example configuration is not provided.
