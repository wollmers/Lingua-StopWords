package Lingua::StopWords::HU;

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
            a ahogy ahol aki akik akkor alatt által általában amely
            amelyek amelyekben amelyeket amelyet amelynek ami amit amolyan
            amíg amikor át abban ahhoz annak arra arról az azok azon azt
            azzal azért aztán azután azonban bár be belül benne cikk
            cikkek cikkeket csak de e eddig egész egy egyes egyetlen
            egyéb egyik egyre ekkor el elég ellen elõ elõször elõtt
            elsõ én éppen ebben ehhez emilyen ennek erre ez ezt ezek
            ezen ezzel ezért és fel felé hanem hiszen hogy hogyan igen
            így illetve ill. ill ilyen ilyenkor ison ismét itt jó jól
            jobban kell kellett keresztül keressünk ki kívül között
            közül legalább lehet lehetett legyen lenne lenni lesz lett
            maga magát majd majd már más másik meg még mellett mert
            mely melyek mi mit míg miért milyen mikor minden mindent
            mindenki mindig mint mintha mivel most nagy nagyobb nagyon ne
            néha nekem neki nem néhány nélkül nincs olyan ott össze
            õ õk õket pedig persze rá s saját sem semmi sok sokat
            sokkal számára szemben szerint szinte talán tehát teljes
            tovább továbbá több úgy ugyanis új újabb újra után
            utána utolsó vagy vagyis valaki valami valamint való vagyok
            van vannak volt voltam voltak voltunk vissza vele viszont volna 
        );
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( $_, 1 ) } qw( 
            a ahogy ahol aki akik akkor alatt �ltal �ltal�ban amely amelyek
            amelyekben amelyeket amelyet amelynek ami amit amolyan am�g
            amikor �t abban ahhoz annak arra arr�l az azok azon azt azzal
            az�rt azt�n azut�n azonban b�r be bel�l benne cikk cikkek
            cikkeket csak de e eddig eg�sz egy egyes egyetlen egy�b egyik
            egyre ekkor el el�g ellen el� el�sz�r el�tt els� �n �ppen ebben
            ehhez emilyen ennek erre ez ezt ezek ezen ezzel ez�rt �s fel
            fel� hanem hiszen hogy hogyan igen �gy illetve ill. ill ilyen
            ilyenkor ison ism�t itt j� j�l jobban kell kellett kereszt�l
            keress�nk ki k�v�l k�z�tt k�z�l legal�bb lehet lehetett legyen
            lenne lenni lesz lett maga mag�t majd majd m�r m�s m�sik meg
            m�g mellett mert mely melyek mi mit m�g mi�rt milyen mikor
            minden mindent mindenki mindig mint mintha mivel most nagy
            nagyobb nagyon ne n�ha nekem neki nem n�h�ny n�lk�l nincs olyan
            ott �ssze � �k �ket pedig persze r� s saj�t sem semmi sok sokat
            sokkal sz�m�ra szemben szerint szinte tal�n teh�t teljes tov�bb
            tov�bb� t�bb �gy ugyanis �j �jabb �jra ut�n ut�na utols� vagy
            vagyis valaki valami valamint val� vagyok van vannak volt
            voltam voltak voltunk vissza vele viszont volna 
        );
        return \%stoplist;
    }
}

1;
