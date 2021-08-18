# Operações simples com arrays
# Variáveis escalares começam com $
# Arrays começam com @
@array = ("Palavra", "Esse é um", 200, "teste");  # Array original
print "O array chamado \"\@array\" contém: @array.\n";
@array2 = @array[1] . " " . @array[3];            # Array com elementos das posições 1 e 3
print "@array2.\n";
@array3 = @array;                                 # Array igual ao original
print "@array3.\n";
$tamanhoDoArray = @array; # Se usado em um contexto escalar o nome do array dá o seu tam.
print 'Tamanho do @array: ' . "$tamanhoDoArray.\n";