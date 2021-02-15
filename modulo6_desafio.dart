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
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  Set<String> pessoasUnicas = Set();

  pessoas.forEach((linha) {
    pessoasUnicas.add(linha);
  });

  List pessoasLista = List();
  pessoasUnicas.forEach((element) { 
      pessoasLista.add(element.split('|'));
  });

  informarQuandidadeSexo(pessoasLista);
  informarPessoasMaioresIdade(pessoasLista);
  pessoaMaisVelha(pessoasLista);
   
}

void informarQuandidadeSexo(List pessoas)
{
  var pessoasPorSexoMasculino = pessoas.where((element) => element[2].toLowerCase().contains("masculino"));
  var pessoasPorSexoFeminino = pessoas.where((element) => element[2].toLowerCase().contains("feminino"));
  
  print('Pessoas do Sexo Masculino: ${pessoasPorSexoMasculino.length}');
  print('Pessoas do Sexo Feminino: ${pessoasPorSexoFeminino.length}');

}

void informarPessoasMaioresIdade(List pessoas)
{
  var pessoasMaiores = pessoas.where((pessoa) => int.parse(pessoa[1]) >= 18 ).toList();
  print('Pessoas com mais de 18 anos: ${pessoasMaiores.length}');
}

void pessoaMaisVelha(List pessoas)
{
  pessoas.sort((p1, p2) => int.parse(p1[1]).compareTo(int.parse(p2[1])));
  var maisVelha = pessoas.last;
  print('A pessoa mais velha é ${maisVelha[0]} com ${maisVelha[1]} anos!');
}