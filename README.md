# ersd-keycloak
> Keycloak for ERSD

Please note this is just using [jboss/keycloak from Docker hub](https://hub.docker.com/r/jboss/keycloak/).  Go [there](https://hub.docker.com/r/jboss/keycloak/) for more information if needed.

# Run With MySQL as Database
```bash
docker run -p 8080:8080 -e KEYCLOAK_USER=<KC_MASTER_USERNAME> -e KEYCLOAK_PASSWORD=<KC_MASTER_PASS> -e DB_VENDOR=mysql -e DB_ADDR=<DB_ADDR> -e DB_USER=<DB_USER> -e DB_PASSWORD=<DB_PASS> -t jboss/keycloak
```

# Configuration
```bash
./configure
```
Run the configure script provided in this repository.  Provide it with keycloak credentials and the desired setup options, and it should perform the following:
- Authenticates against the keycloak service located at the base URL you provide
- Creates a realm of your choosing, which defaults to `ersd`
- Creates the `admin` realm role on the newly created realm
- Creates a client of your choosing, which defaults to `ersd-app`
- Fetches the authentication certificate for the newly created realm and writes it to standard out

All of these are requirements of the [ERSD Node application](https://gitlab.ruvos.com/ersd/ersd) and should be reflected in the configuration there as well.