package Lingua::StopWords::NO;

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
            og i jeg det at en et den til er som på de med han av ikke
            ikkje der så var meg seg men ett har om vi min mitt ha hadde
            hun nå over da ved fra du ut sin dem oss opp man kan hans hvor
            eller hva skal selv sjøl her alle vil bli ble blei blitt kunne
            inn når være kom noen noe ville dere som deres kun ja etter
            ned skulle denne for deg si sine sitt mot å meget hvorfor
            dette disse uten hvordan ingen din ditt blir samme hvilken
            hvilke sånn inni mellom vår hver hvem vors hvis både bare
            enn fordi før mange også slik vært være båe begge siden
            dykk dykkar dei deira deires deim di då eg ein eit eitt elles
            honom hjå ho hoe henne hennar hennes hoss hossen ikkje ingi
            inkje korleis korso kva kvar kvarhelst kven kvi kvifor me medan
            mi mine mykje no nokon noka nokor noko nokre si sia sidan so
            somt somme um upp vere vore verte vort varte vart 
        );
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( $_, 1 ) } qw( 
            og i jeg det at en et den til er som p� de med han av ikke
            ikkje der s� var meg seg men ett har om vi min mitt ha hadde
            hun n� over da ved fra du ut sin dem oss opp man kan hans hvor
            eller hva skal selv sj�l her alle vil bli ble blei blitt kunne
            inn n�r v�re kom noen noe ville dere som deres kun ja etter ned
            skulle denne for deg si sine sitt mot � meget hvorfor dette
            disse uten hvordan ingen din ditt blir samme hvilken hvilke
            s�nn inni mellom v�r hver hvem vors hvis b�de bare enn fordi
            f�r mange ogs� slik v�rt v�re b�e begge siden dykk dykkar dei
            deira deires deim di d� eg ein eit eitt elles honom hj� ho hoe
            henne hennar hennes hoss hossen ikkje ingi inkje korleis korso
            kva kvar kvarhelst kven kvi kvifor me medan mi mine mykje no
            nokon noka nokor noko nokre si sia sidan so somt somme um upp
            vere vore verte vort varte vart 
        );
        return \%stoplist;
    }
}

1;
