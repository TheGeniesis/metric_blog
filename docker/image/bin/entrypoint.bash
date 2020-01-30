#!/usr/bin/env bash

serialize_environment_variables()
{
  export -p | sed 's/declare -x/export/g'
}
substitute_environment_variables()
{
  envsubst $(printenv | cut -f1 -d'=' | sed 's/.*/\\\${&}/' | tr '\n' ',')
}

set -e

echo "$1" > /run/docker-entrypoint-command.txt

  '--start-cgi-server')
    php-fpm --nodaemonize
  ;;

  '--start-http-server')
    substitute_environment_variables < /etc/nginx/sites-available/symfony.conf > /etc/nginx/sites-available/symfony.conf
    nginx -g 'daemon off;'
  ;;

  *)
    echo 'undefined' > /run/docker-entrypoint-command.txt
    exec "$@"
  ;;
esac

exit 0
