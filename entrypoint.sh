!/bin/sh

set -e

if ! command -v -- "$1" >/dev/null 2>&1 ; then
	set -- java -jar "/app/bin/app.jar" "$@"
fi

if [ "$1" = "java" -a -n "$JAVA_OPTIONS" ] ; then
	shift
	set -- java $JAVA_OPTIONS "$@"
fi

echo Running command: "$@"
exec "$@"