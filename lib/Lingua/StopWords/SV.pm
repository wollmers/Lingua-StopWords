package Lingua::StopWords::SV;

use strict;
use warnings;

use Exporter;
our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw( getStopWords ) ] ); 
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our $VERSION = 0.08;

sub getStopWords {
    if ( @_ and $_[0] eq 'UTF-8' ) {
        # adding U0 causes the result to be flagged as UTF-8
        my %stoplist = map { ( pack("U0a*", $_), 1 ) } qw( 
            och det att i en jag hon som han på den med var sig för så
            till är men ett om hade de av icke mig du henne då sin nu har
            inte hans honom skulle hennes där min man ej vid kunde något
            från ut när efter upp vi dem vara vad över än dig kan sina
            här ha mot alla under någon eller allt mycket sedan ju denna
            själv detta åt utan varit hur ingen mitt ni bli blev oss din
            dessa några deras blir mina samma vilken er sådan vår blivit
            dess inom mellan sådant varför varje vilka ditt vem vilket
            sitta sådana vart dina vars vårt våra ert era vilkas 
        );
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( $_, 1 ) } qw( 
            och det att i en jag hon som han p� den med var sig f�r s� till
            �r men ett om hade de av icke mig du henne d� sin nu har inte
            hans honom skulle hennes d�r min man ej vid kunde n�got fr�n ut
            n�r efter upp vi dem vara vad �ver �n dig kan sina h�r ha mot
            alla under n�gon eller allt mycket sedan ju denna sj�lv detta
            �t utan varit hur ingen mitt ni bli blev oss din dessa n�gra
            deras blir mina samma vilken er s�dan v�r blivit dess inom
            mellan s�dant varf�r varje vilka ditt vem vilket sitta s�dana
            vart dina vars v�rt v�ra ert era vilkas 
        );
        return \%stoplist;
    }
}

1;
