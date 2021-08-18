# Função ECHO, responsável por receber algo na entrada através de STDIN e disponibilizar
# para o programador
use strict;
my $somaTotal;
my $cont = 0;
my @arrayNumerosRecebidos;
while(my $var = <STDIN>) {
    print $var;
    $somaTotal += $var;
    @arrayNumerosRecebidos[$cont] = $var;
    $cont ++;
}
print "Soma total = $somaTotal.\n";
print "Array com números recebidos: \n @arrayNumerosRecebidos" . "\n";