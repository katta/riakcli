Command line utility to interact with RIAK distributed database

### What can I do with this ?

* List all the buckets available in a given RIAK instance
* List all keys in a given bucket
* Read an object given a key under a given bucket
* Delete the bucket
* More to come..

### How do I use this ?

Here you go !!

```
Usage:
  riakcli list buckets                       -> Lists all the buckets available in riak
  riakcli list keys [bucket-name]            -> Lists all keys in a given bucket
  riakcli list object [bucket-name] [key]    -> Lists the object associated with a given key in a specified bucket
  riakcli delete bucket [bucket-name]        -> Deletes all objects in a specified bucket
  riakcli help                               -> Displays this usage information
```

### How do I set it up ?

```bash
https://github.com/katta/riakcli.git
cd riakcli      
./install.sh
```

> __After setting it up, riakcli is available @ /usr/local/bin/riakcli (make sure it is added to your PATH)__

### Whats coming later ?

* Auto completion of sub commands
* Updating RIAK objects
