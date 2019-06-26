*NIX command line and GUI tool for retrieving OMDb movie/TV information
============================================================

### Prerequisites:

You need to obtain your personal **API key** from the [OMDb API
website][omdbapi] in order to be able to use the tool. Once you have it, you
need to update the variable named `my_omdb_key` into `thesmallscript.sh` file.

A **personal** API key is anyway currently stored.

`Docker` application needs also to be installed onto your host system. Instructions can be found at the [Docker website][docker]

### Usage:

You first need to build a docker application named *omdb-query* (or another name of your choice)

    docker build -t omdb-query .

Then you can run the application via command line:

    docker run -ti omdb-query

### Some usage examples:

Show all info about the movie 'The Party'

    $ docker run -ti omdb-query
    Enter a film name and you'll get Rotten Tomatoes rating! -> The Party
    You asked for: 'The Party'. Let's see!
    Got it! And here comes your rating : 82%


...but please ensure your movie is in the OMDB!

    $ docker run -ti omdb-query
    Enter a film name and you'll get Rotten Tomatoes rating! -> xyz
    You asked for: 'xyz'. Let's see!
    Oops! Seems that the movie named 'xyz' can't be found in OMDB...


## Notes ##

 - For omdbtool.py python script all credits go to creators of this git repository: [omdb-cli][omdb-cli]
 - **thanks to the creator of this [great site called OMDBAPI][omdbapi]**


## License ##

This tool is licensed under [GNU Lesser GPL][lgpl] license.

[omdbapi]: https://www.omdbapi.com
[docker]: https://docs.docker.com/install/
[omdb-cli]: https://github.com/bgr/omdb-cli/
