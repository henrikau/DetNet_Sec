# DetNet Security

[![Build Status](https://travis-ci.com/henrikau/DetNet_Sec.svg?branch=master)](https://travis-ci.com/henrikau/DetNet_Sec)


* For more details: https://travis-ci.com/henrikau/DetNet_Sec
* previous build: https://travis-ci.com/henrikau/DetNet_Sec/builds


## Tools (Linux):

For the command-line aficionado, xml2rfc is a suitable tool for
converting the raw xml into more readable .txt. It is available in the
"xml2rfc" package for debian-based systems.

``` shell
xml2rfc --text draft-ietf-detnet-security-<NN>.xml
```

This will both validate the xml and generate a .txt if it is valid. See
xml2rfc -h for more options

For simplicity, use make:

``` shell
make idnits
```

Which will assemble a text-file from the xml and also pass idnits over
it to weed out warnings and errors.


## Files and folders:

Published, or (semi-)official, versions can be found in published/. The current
work in progress is detnet-security.xml. See 'Branches' for which branch to use.

Current approach is to use published/ as an archive of old verions. As a
convenience, each new draft placed under published/ get a separate tag
which is then signed.

## Branches:

- master: considered to be the stable branch
- user/<whatever>: branches for individual contributors. Should not be
  pushed to by anyone but <username>

## Tags:

Whenever we have a new revision, or semi-stable version that we want to
circulate to a wider distribution, we throw in a tag to make it easier
to reference.

Naming is typically "draft-NN(-rcX)" where NN is the current
draft-number and the optional -rcX is a release candidate for a
draft. The naming-scheme is not set in stone, anything that makes sense
is acceptable.
