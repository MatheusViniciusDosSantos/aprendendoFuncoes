import 'dart:io';

void show() {
  print("Função com retorno e sem parâmetro");
  print("O aluno está ${verificarAprovacao()}");
}

String verificarAprovacao() {
  print("Informe a nota1: ");
  double nota1 = double.parse(stdin.readLineSync()!);

  print("Informe a nota2: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}
