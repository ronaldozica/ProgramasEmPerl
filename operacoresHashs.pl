# Operações simples com hashs
# Hashs começam com %
$hash{"Chave"} = "Conteudo";    # Atribui o conteúdo "Conteúdo" a chave "Chave"
$hash{"Key"} = "Value";
$hash{"Numero"} = 10;
$hash{"Frase"} = 'Hello World';
$hash{"Igual"} = qq/$hash{"Chave"}/ . " duplicado!";
$hash{"AspasSimples"} = 'qq/$hash{"Chave"}/' . " não foi duplicado!";
$hash{"AspasDuplas"} = "qq/$hash{\"Chave\"}/" . " foi duplicado!";
# Acima é demonstrado a diferença no funcionamento entre '' e ""
print qq/$hash{"Chave"}\n/;
print qq/$hash{"Key"}\n/;
print qq/$hash{"Numero"}\n/;
print qq/$hash{"Frase"}\n/;
print qq/$hash{"Igual"}\n/;
print qq/$hash{"AspasSimples"}\n/;
print qq/$hash{"AspasDuplas"}\n/;
# Hashs podem ser criados da forma acima ou da forma abaixo
%hash2 = ( chave => 'conteudo',
           key   => 'value');
print "\n$hash2{'chave'}\n$hash2{'key'}\n";
# Pode-se usar a função keys do Perl 5 para se obter as chaves(keys) do hash
@chaves = keys(%hash);
print 'As chaves de $hash são: ' .  "@chaves\n";