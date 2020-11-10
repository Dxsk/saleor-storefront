#!/bin/sh

npm rebuild node-sass
npm run build
npm start -- --host 0.0.0.0
