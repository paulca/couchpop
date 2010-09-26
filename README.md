# CouchPop #

Pushes the contents of a directory to CouchDB.

## Installation ##

    gem install couchpop

## Usage ##

In your project directory, run:

    couchpop

This uploads the contents of the current directory to `localhost:5984/dbname/appname`

`dbname` and `appname` are set by default to the current directory name.

You can specify them as arguments:

    couchpop my_database my_app
    
## Requirements. ##

CouchDB needs to be installed and running.

This app shells out to curl, so you need to have curl installed.

Made by Paul Campbell, @paulca
with help from Chris Williams