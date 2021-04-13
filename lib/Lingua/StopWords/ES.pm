package Lingua::StopWords::ES;

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
            de la que el en y a los del se las por un para con no una su al
            lo como más pero sus le ya o este sí porque esta entre cuando
            muy sin sobre también me hasta hay donde quien desde todo nos
            durante todos uno les ni contra otros ese eso ante ellos e esto
            mí antes algunos qué unos yo otro otras otra él tanto esa
            estos mucho quienes nada muchos cual poco ella estar estas
            algunas algo nosotros mi mis tú te ti tu tus ellas nosotras
            vosotros vosotras os mío mía míos mías tuyo tuya tuyos
            tuyas suyo suya suyos suyas nuestro nuestra nuestros nuestras
            vuestro vuestra vuestros vuestras esos esas estoy estás está
            estamos estáis están esté estés estemos estéis estén
            estaré estarás estará estaremos estaréis estarán estaría
            estarías estaríamos estaríais estarían estaba estabas
            estábamos estabais estaban estuve estuviste estuvo estuvimos
            estuvisteis estuvieron estuviera estuvieras estuviéramos
            estuvierais estuvieran estuviese estuvieses estuviésemos
            estuvieseis estuviesen estando estado estada estados estadas
            estad he has ha hemos habéis han haya hayas hayamos hayáis
            hayan habré habrás habrá habremos habréis habrán habría
            habrías habríamos habríais habrían había habías habíamos
            habíais habían hube hubiste hubo hubimos hubisteis hubieron
            hubiera hubieras hubiéramos hubierais hubieran hubiese
            hubieses hubiésemos hubieseis hubiesen habiendo habido habida
            habidos habidas soy eres es somos sois son sea seas seamos
            seáis sean seré serás será seremos seréis serán sería
            serías seríamos seríais serían era eras éramos erais eran
            fui fuiste fue fuimos fuisteis fueron fuera fueras fuéramos
            fuerais fueran fuese fueses fuésemos fueseis fuesen siendo
            sido tengo tienes tiene tenemos tenéis tienen tenga tengas
            tengamos tengáis tengan tendré tendrás tendrá tendremos
            tendréis tendrán tendría tendrías tendríamos tendríais
            tendrían tenía tenías teníamos teníais tenían tuve
            tuviste tuvo tuvimos tuvisteis tuvieron tuviera tuvieras
            tuviéramos tuvierais tuvieran tuviese tuvieses tuviésemos
            tuvieseis tuviesen teniendo tenido tenida tenidos tenidas tened 
        );
        return \%stoplist;
    }
    else {
        my %stoplist = map { ( $_, 1 ) } qw( 
            de la que el en y a los del se las por un para con no una su al
            lo como m�s pero sus le ya o este s� porque esta entre cuando
            muy sin sobre tambi�n me hasta hay donde quien desde todo nos
            durante todos uno les ni contra otros ese eso ante ellos e esto
            m� antes algunos qu� unos yo otro otras otra �l tanto esa estos
            mucho quienes nada muchos cual poco ella estar estas algunas
            algo nosotros mi mis t� te ti tu tus ellas nosotras vosotros
            vosotras os m�o m�a m�os m�as tuyo tuya tuyos tuyas suyo suya
            suyos suyas nuestro nuestra nuestros nuestras vuestro vuestra
            vuestros vuestras esos esas estoy est�s est� estamos est�is
            est�n est� est�s estemos est�is est�n estar� estar�s estar�
            estaremos estar�is estar�n estar�a estar�as estar�amos
            estar�ais estar�an estaba estabas est�bamos estabais estaban
            estuve estuviste estuvo estuvimos estuvisteis estuvieron
            estuviera estuvieras estuvi�ramos estuvierais estuvieran
            estuviese estuvieses estuvi�semos estuvieseis estuviesen
            estando estado estada estados estadas estad he has ha hemos
            hab�is han haya hayas hayamos hay�is hayan habr� habr�s habr�
            habremos habr�is habr�n habr�a habr�as habr�amos habr�ais
            habr�an hab�a hab�as hab�amos hab�ais hab�an hube hubiste hubo
            hubimos hubisteis hubieron hubiera hubieras hubi�ramos
            hubierais hubieran hubiese hubieses hubi�semos hubieseis
            hubiesen habiendo habido habida habidos habidas soy eres es
            somos sois son sea seas seamos se�is sean ser� ser�s ser�
            seremos ser�is ser�n ser�a ser�as ser�amos ser�ais ser�an era
            eras �ramos erais eran fui fuiste fue fuimos fuisteis fueron
            fuera fueras fu�ramos fuerais fueran fuese fueses fu�semos
            fueseis fuesen siendo sido tengo tienes tiene tenemos ten�is
            tienen tenga tengas tengamos teng�is tengan tendr� tendr�s
            tendr� tendremos tendr�is tendr�n tendr�a tendr�as tendr�amos
            tendr�ais tendr�an ten�a ten�as ten�amos ten�ais ten�an tuve
            tuviste tuvo tuvimos tuvisteis tuvieron tuviera tuvieras
            tuvi�ramos tuvierais tuvieran tuviese tuvieses tuvi�semos
            tuvieseis tuviesen teniendo tenido tenida tenidos tenidas tened 
        );
        return \%stoplist;
    }
}

1;
