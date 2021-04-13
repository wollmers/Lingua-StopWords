package Lingua::StopWords::PT;

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
            de a o que e do da em um para com não uma os no se na por mais
            as dos como mas ao ele das à seu sua ou quando muito nos já
            eu também só pelo pela até isso ela entre depois sem mesmo
            aos seus quem nas me esse eles você essa num nem suas meu às
            minha numa pelos elas qual nós lhe deles essas esses pelas
            este dele tu te vocês vos lhes meus minhas teu tua teus tuas
            nosso nossa nossos nossas dela delas esta estes estas aquele
            aquela aqueles aquelas isto aquilo estou está estamos estão
            estive esteve estivemos estiveram estava estávamos estavam
            estivera estivéramos esteja estejamos estejam estivesse
            estivéssemos estivessem estiver estivermos estiverem hei há
            havemos hão houve houvemos houveram houvera houvéramos haja
            hajamos hajam houvesse houvéssemos houvessem houver houvermos
            houverem houverei houverá houveremos houverão houveria
            houveríamos houveriam sou somos são era éramos eram fui foi
            fomos foram fora fôramos seja sejamos sejam fosse fôssemos
            fossem for formos forem serei será seremos serão seria
            seríamos seriam tenho tem temos tém tinha tínhamos tinham
            tive teve tivemos tiveram tivera tivéramos tenha tenhamos
            tenham tivesse tivéssemos tivessem tiver tivermos tiverem
            terei terá teremos terão teria teríamos teriam 
        );
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( $_, 1 ) } qw( 
            de a o que e do da em um para com n�o uma os no se na por mais
            as dos como mas ao ele das � seu sua ou quando muito nos j� eu
            tamb�m s� pelo pela at� isso ela entre depois sem mesmo aos
            seus quem nas me esse eles voc� essa num nem suas meu �s minha
            numa pelos elas qual n�s lhe deles essas esses pelas este dele
            tu te voc�s vos lhes meus minhas teu tua teus tuas nosso nossa
            nossos nossas dela delas esta estes estas aquele aquela aqueles
            aquelas isto aquilo estou est� estamos est�o estive esteve
            estivemos estiveram estava est�vamos estavam estivera
            estiv�ramos esteja estejamos estejam estivesse estiv�ssemos
            estivessem estiver estivermos estiverem hei h� havemos h�o
            houve houvemos houveram houvera houv�ramos haja hajamos hajam
            houvesse houv�ssemos houvessem houver houvermos houverem
            houverei houver� houveremos houver�o houveria houver�amos
            houveriam sou somos s�o era �ramos eram fui foi fomos foram
            fora f�ramos seja sejamos sejam fosse f�ssemos fossem for
            formos forem serei ser� seremos ser�o seria ser�amos seriam
            tenho tem temos t�m tinha t�nhamos tinham tive teve tivemos
            tiveram tivera tiv�ramos tenha tenhamos tenham tivesse
            tiv�ssemos tivessem tiver tivermos tiverem terei ter� teremos
            ter�o teria ter�amos teriam 
        );
        return \%stoplist;
    }
}

1;
