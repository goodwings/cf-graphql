#!/bin/bash

if [ "$1" = "production" ]; then
	echo "Enable Contentful Live Mode"
else
	echo "Enable Contentful Preview Mode"
	sed -i 's/cdn/preview/g' node_modules/cf-graphql/src/client.js
fi

env

npm start
