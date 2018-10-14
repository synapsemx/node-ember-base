## node-ember-base

Taking advantage of Docker’s multi-stage build process with a packaged base image for node, ember, and utils. 

Simply put, it allows to use the output of a given image as the input of the next one, avoiding fat images and simplifying the building process.

Current versions:
- Node @ 8.12.0-alpine
- Bower @ 1.7.9
- Ember @ 2.28.2
