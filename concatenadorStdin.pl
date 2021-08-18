# Contador de linhas recebidas + Concateador de comandos recebidos
# Esse programa recebe comandos através do STDIN até que:
#   Encontre um EOF
#   A quantidade máxima de linhas recebidas no primeiro comando seja atingida
use strict;

my $quantidadeLinhasLidas = <STDIN>;
if($quantidadeLinhasLidas <= 0)
    { die "Erro: Número de linhas informados foi menor ou igual a 0.\n"; }

my $frasesConcatenadas = "";
my $contadorLinhasConcatenadas = 1;

while (my $linhaLida = <STDIN>) {
    
    chomp $linhaLida;       # A função chomp "come" o separador das linhas
    
    $frasesConcatenadas = $frasesConcatenadas . $linhaLida;
    $quantidadeLinhasLidas --;
    
    if($quantidadeLinhasLidas == 0) 
        { last; }
        
    $contadorLinhasConcatenadas ++;
}

print "Quantidade de linhas concatenadas: $contadorLinhasConcatenadas.\n";
print "\nString com as frases concatenadas:\n$frasesConcatenadas\n";