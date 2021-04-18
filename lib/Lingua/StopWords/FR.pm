package Lingua::StopWords::FR;

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
            au aux avec ce ces dans de des du elle en et eux il je la le
            leur lui ma mais me même mes moi mon ne nos notre nous on ou
            par pas pour qu que qui sa se ses son sur ta te tes toi ton tu
            un une vos votre vous c d j l à m n s t y été étée étées étés
            étant étante étants étantes suis es est sommes êtes sont serai
            seras sera serons serez seront serais serait serions seriez
            seraient étais était étions étiez étaient fus fut fûmes fûtes
            furent sois soit soyons soyez soient fusse fusses fût fussions
            fussiez fussent ayant ayante ayantes ayants eu eue eues eus ai
            as avons avez ont aurai auras aura aurons aurez auront aurais
            aurait aurions auriez auraient avais avait avions aviez avaient
            eut eûmes eûtes eurent aie aies ait ayons ayez aient eusse
            eusses eût eussions eussiez eussent
    );
}

1;
