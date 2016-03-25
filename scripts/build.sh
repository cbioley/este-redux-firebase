#!/bin/sh

# build minified standalone version in dist
rm -rf dist
NODE_ENV=production ./node_modules/.bin/webpack --output-filename=dist/este-redux-firebase.js
NODE_ENV=production ./node_modules/.bin/webpack --output-filename=dist/este-redux-firebase.min.js --optimize-minimize

# build ES5 modules to lib
rm -rf lib
./node_modules/.bin/babel src --out-dir lib --ignore="**/*-test.js"
