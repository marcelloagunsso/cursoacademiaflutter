void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  final filtroIdade = 20;
  int qtdPacientesFiltroIdade = 0;
  List<String> listaSobrenomes = [];

  for(var paciente in pacientes)
  {
      var pacienteSplit = paciente.split('|');

      if(int.tryParse(pacienteSplit[1]) != null && int.parse(pacienteSplit[1]) > filtroIdade)
        qtdPacientesFiltroIdade++;
  }

  print("O total de pacientes com idade superior a 20 anos é ${qtdPacientesFiltroIdade}.");
  print("");
  for(var paciente in pacientes)
  {
      var pacienteSplit = paciente.split('|');
      var sobrenomePaciente = pacienteSplit[0].split(' ').last;

      if(!listaSobrenomes.contains(sobrenomePaciente))
      {
        listaSobrenomes.add(sobrenomePaciente);
        print("- Família $sobrenomePaciente");

        for(var paciente in pacientes)
        {
          var pacienteSplit = paciente.split('|');
          if(sobrenomePaciente.toLowerCase() == pacienteSplit[0].split(' ').last.toLowerCase())
          {
            print("   ${pacienteSplit[0]}");
          }
        }

      }
  }

  
}
