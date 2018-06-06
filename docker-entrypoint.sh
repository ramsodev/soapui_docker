#!/bin/sh
set -e

echo $OPTIONS


case "$1" in
	mockup)
        echo 'Lanzando mockuips del proyecto $PROJECT_PATH/$PROJECT en el puerto $PORT'
        echo "$OPTIONS""-""$SUITE"
        if ! [ -z "$SUITE" ]; then
            OPTIONS="$OPTIONS ""-m $SUITE"
        fi
        set -- mockservicerunner.sh -Djava.awt.headless=true -p $PORT $OPTIONS  $PROJECT_PATH/$PROJECT
        ;;
	test)
        results="$PROJECT_PATH""/""$PROJECT""_results"
        mkdir -p $results 
        p="$PROJECT_PATH""/""$PROJECT"
         if ! [ -z "$SUITE" ]; then
            OPTIONS="$OPTIONS ""-s $SUITE"
        fi
        echo "Lanzando pruebas del proyecto ""$PROJECT"" los resultados se almacenaran en ""$results"
        set -- testrunner.sh -Djava.awt.headless=true -A -f $results $OPTIONS $p
        ;;
esac

echo "$@"

exec "$@"
