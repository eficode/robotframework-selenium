#!/bin/sh

set -e

DIR="$(cd "$(dirname "${0}")" && pwd)"
cd "$DIR"

export image=""
export version=""

docker-compose up -d demoapp

for browser in chrome firefox; do
    image="robotframework-selenium-${browser}"
    docker-compose build robot
    docker-compose run robot -v BROWSER:${browser} --outputdir /out /tests
done

docker-compose down -v
