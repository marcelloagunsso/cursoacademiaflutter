void main() 
{
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  Set<String> pessoasUnicas = Set();

  pessoas.forEach((linha) {
    pessoasUnicas.add(linha);
  });

  print('1 - Remover os duplicados');
  print(pessoasUnicas);
  print('');

  List pessoasLista = List();
  pessoasUnicas.forEach((element) { 
      pessoasLista.add(element.split('|'));
  });

  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  informarQuandidadeSexo(pessoasLista);
  print('');

  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e mostre a quantidade de pessoas com mais de 18 anos');
  final pessoasMaiores = pessoasLista.where((pessoa) => int.parse(pessoa[1]) >= 18 ).toList();
  print('Qtd. pessoas com mais de 18 anos: ${pessoasMaiores.length}');
  print('');

  print('4 - Encontre a pessoa mais velha.');
  pessoaMaisVelha(pessoasMaiores);
   
}

void informarQuandidadeSexo(List pessoas)
{
  final pessoasPorSexoMasculino = pessoas.where((element) => element[2].toLowerCase().contains("masculino")).toList();
  final pessoasPorSexoFeminino = pessoas.where((element) => element[2].toLowerCase().contains("feminino")).toList();
  
  print('Pessoas do Sexo Masculino: ${pessoasPorSexoMasculino.length}');
  print('Pessoas do Sexo Feminino: ${pessoasPorSexoFeminino.length}');

}

void pessoaMaisVelha(List pessoas)
{
  pessoas.sort((p1, p2) => int.parse(p1[1]).compareTo(int.parse(p2[1])));
  final maisVelha = pessoas.last;
  print('A pessoa mais velha é ${maisVelha[0]} com ${maisVelha[1]} anos!');
}