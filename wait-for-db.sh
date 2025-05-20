#!/bin/sh

echo "⏳ Waiting for MySQL to be ready..."

until echo "SELECT 1" | mysql -h"db" -u"root" -p"root" todo &> /dev/null; do
  sleep 2
done

echo "✅ MySQL is up - starting app"
exec java -jar app.jar