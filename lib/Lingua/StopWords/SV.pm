package Lingua::StopWords::SV;

use strict;
use warnings;

use utf8;

use Encode qw(encode);

use Exporter;
our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw( getStopWords ) ] );
our @EXPORT_OK   = ( @{ $EXPORT_TAGS{'all'} } );
our $VERSION     = 0.12;

sub getStopWords {
    if ( @_ and $_[0] eq 'UTF-8' ) {
        my %stoplist = map { ( $_, 1 ) } _stopwords();
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( encode("iso-8859-1", $_), 1 ) } _stopwords();
        return \%stoplist;
    }
}

sub _stopwords {
    return qw(
            och det att i en jag hon som han på den med var sig för så till
            är men ett om hade de av icke mig du henne då sin nu har inte
            hans honom skulle hennes där min man ej vid kunde något från ut
            när efter upp vi dem vara vad över än dig kan sina här ha mot
            alla under någon eller allt mycket sedan ju denna själv detta
            åt utan varit hur ingen mitt ni bli blev oss din dessa några
            deras blir mina samma vilken er sådan vår blivit dess inom
            mellan sådant varför varje vilka ditt vem vilket sitta sådana
            vart dina vars vårt våra ert era vilkas
    );
}

1;
