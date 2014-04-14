
[![wercker
status](https://app.wercker.com/status/e63c6fcfb36cc7b7a97c04260bcef1fa/s/
"wercker
status")](https://app.wercker.com/project/bykey/e63c6fcfb36cc7b7a97c04260bcef1fa)

# Introduction

A simple demonstration of using [rspec](http://rspec.info/) to
test building docker images as part of a continous integration process.

The process is:

1. pull a specific image from the docker repository
2. update the image locally by running the Dockerfile
3. run the rspec tests
4. if the tests pass push the resulting image to the upstream repo

Because the image running the tests is rebuild from scratch for each
test only known good builds are retained. And the upstream repository
only contains builds that pass the test suite.
