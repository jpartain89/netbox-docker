CORS_ORIGIN_ALLOW_ALL=True
DB_HOST=netbox-postgres
DB_NAME=netbox
DB_PASSWORD={{ op://dev/Netbox/POSTGRES/DB_PASSWORD }}
DB_USER={{ op://dev/Netbox/POSTGRES/DB_USER }}
EMAIL_FROM=admin@jpcdi.com
EMAIL_PASSWORD={{ op://dev/Google Enterprise/SMTP Relay/Password 2 }}
EMAIL_PORT={{ op://dev/Google Enterprise/SMTP Relay/Port }}
EMAIL_SERVER={{ op://dev/Google Enterprise/SMTP Relay/address }}
EMAIL_SSL_CERTFILE=
EMAIL_SSL_KEYFILE=
EMAIL_TIMEOUT=5
EMAIL_USERNAME={{ op://dev/Google Enterprise/username }}
# EMAIL_USE_SSL and EMAIL_USE_TLS are mutually exclusive, i.e. they can't both be `true`!
EMAIL_USE_SSL=false
EMAIL_USE_TLS=true
GRAPHQL_ENABLED=true
HOUSEKEEPING_INTERVAL=86400
MEDIA_ROOT=/opt/netbox/netbox/media
METRICS_ENABLED=false
REDIS_CACHE_DATABASE=1
REDIS_CACHE_HOST=redis-cache
REDIS_CACHE_INSECURE_SKIP_TLS_VERIFY=false
REDIS_CACHE_PASSWORD={{ op://dev/Netbox/REDIS_CACHE/REDIS_CACHE_PASSWORD }}
REDIS_CACHE_SSL=false
REDIS_DATABASE=0
REDIS_HOST=redis
REDIS_INSECURE_SKIP_TLS_VERIFY=false
REDIS_PASSWORD={{ op://dev/Netbox/REDIS/REDIS_PASSWORD }}
REDIS_SSL=false
RELEASE_CHECK_URL=https://api.github.com/repos/netbox-community/netbox/releases
SECRET_KEY='{{ op://dev/Netbox/SECRET_KEY }}'
SKIP_SUPERUSER=true
WEBHOOKS_ENABLED=true

REMOTE_AUTH_ENABLED: "True"
REMOTE_AUTH_BACKEND: "netbox.authentication.LDAPBackend"
AUTH_LDAP_SERVER_URI: "ldaps://ldap.jumpcloud.com:636"
AUTH_LDAP_BIND_DN: "uid=ldap,ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_BIND_PASSWORD: "{{ op://Personal/JumpCloud ldap/password }}"
AUTH_LDAP_USER_SEARCH_BASEDN: "ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_GROUP_SEARCH_BASEDN: "ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_REQUIRE_GROUP_DN: "cn=Admins.ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_IS_ADMIN_DN: "cn=Admins.ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_IS_SUPERUSER_DN: "cn=Admins.ou=Users,o=56d71456a83109f73f72598b,dc=jumpcloud,dc=com"
AUTH_LDAP_USER_SEARCH_ATTR: "uid"
AUTH_LDAP_GROUP_SEARCH_CLASS: "groupOfNames"
AUTH_LDAP_GROUP_TYPE: "groupOfNames"
AUTH_LDAP_ATTR_LASTNAME: "sn"
AUTH_LDAP_ATTR_FIRSTNAME: "givenName"
LDAP_IGNORE_CERT_ERRORS: "false"
