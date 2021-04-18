# NAME

Lingua::StopWords - Stop words for several languages.

# SYNOPSIS

    use Lingua::StopWords qw( getStopWords );
    my $stopwords = getStopWords('en');

    my @words = qw( i am the walrus goo goo g'joob );

    # prints "walrus goo goo g'joob"
    print join ' ', grep { !$stopwords->{$_} } @words;

# DESCRIPTION

In keyword search, it is common practice to suppress a collection of
"stopwords": words such as "the", "and", "maybe", etc. which exist in in a
large number of documents and do not tell you anything important about any
document which contains them.  This module provides such "stoplists" in
several languages.

## Supported Languages

    |-----------------------------------------------------------|
    | Language   | ISO code | default encoding | also available |
    |-----------------------------------------------------------|
    | Danish     | da       | ISO-8859-1       | UTF-8          |
    | Dutch      | nl       | ISO-8859-1       | UTF-8          |
    | English    | en       | ISO-8859-1       | UTF-8          |
    | Finnish    | fi       | ISO-8859-1       | UTF-8          |
    | French     | fr       | ISO-8859-1       | UTF-8          |
    | German     | de       | ISO-8859-1       | UTF-8          |
    | Hungarian  | hu       | ISO-8859-2       | UTF-8          |
    | Indonesian | id       | ISO-8859-1       | UTF-8          |
    | Italian    | it       | ISO-8859-1       | UTF-8          |
    | Norwegian  | no       | ISO-8859-1       | UTF-8          |
    | Portuguese | pt       | ISO-8859-1       | UTF-8          |
    | Romanian   | ro       | ISO-8859-2       | UTF-8          |
    | Spanish    | es       | ISO-8859-1       | UTF-8          |
    | Swedish    | sv       | ISO-8859-1       | UTF-8          |
    | Russian    | ru       | KOI8-R           | UTF-8          |
    |-----------------------------------------------------------|

# FUNCTIONS

## getStopWords

    my $stoplist      = getStopWords('en');
    my $utf8_stoplist = getStopWords('en', 'UTF-8');

Retrieve a stoplist in the form of a hashref where the keys are all
stopwords and the values are all 1.

    $stoplist = {
        and => 1,
        if  => 1,
        # ...
    };

getStopWords() expects 1-2 arguments.  The first, which is required, is an ISO
code representing a supported language.  If the ISO code cannot be found,
getStopWords returns undef.

The second argument should be 'UTF-8' if you want the stopwords encoded in
UTF-8.  The UTF-8 flag will be turned on, so make sure you understand all the
implications of that.

# INSTALLATION

To install this module type the following:

    perl Build.PL
    ./Build
    ./Build test
    ./Build install

# SEE ALSO

The stoplists supplied by this module were created as part of the Snowball
project (see [http://snowball.tartarus.org](http://snowball.tartarus.org),
[Lingua::Stem::Snowball](https://metacpan.org/pod/Lingua%3A%3AStem%3A%3ASnowball)).

[Lingua::EN::StopWords](https://metacpan.org/pod/Lingua%3A%3AEN%3A%3AStopWords) provides a different stoplist
for English.

# SOURCE REPOSITORY

[https://github.com/wollmers/Lingua-StopWords](https://github.com/wollmers/Lingua-StopWords)

# AUTHOR

Maintained by Helmut Wollmersdorfer <helmut@wollmersdorfer.at>
and Marvin Humphrey &lt;marvin at rectangular dot com>.
Original author Fabien Potencier, &lt;fabpot at cpan dot org>.

# COPYRIGHT

Copyright 2021 Helmut Wollmersdorfer
Copyright 2004-2008 Fabien Potencier, Marvin Humphrey

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.3 or,
at your option, any later version of Perl 5 you may have available.
