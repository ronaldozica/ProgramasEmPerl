# Programa leitor de arquivos. Esse programa simplesmente lê um arquivo de entrada e coloca no terminal os dados do arquivo.
# Esse programa será o esqueleto utilizado para os próximos códigos de leitura de arquivo.
use strict;
if($#ARGV != 0) {
    print STDERR "Número de argumentos inserido no parâmetro ARGV inválido.\n";
    exit 1;
}
open(ARQUIVOIN, $ARGV[0]) or die "Não foi possível abrir $ARGV[0]: $!.\n";
while(my $fraseLida = <ARQUIVOIN>) {
    print $fraseLida;
}
close ARQUIVOIN;