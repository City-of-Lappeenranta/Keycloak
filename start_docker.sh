docker run -p 8080:8080 --name keycloak_tunnistamo -d --env-file .env -v /var/opt/keycloak:/opt/jboss/keycloak/standalone/data img_keycloak_tunnistamo 
