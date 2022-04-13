import 'dart:io';

void show() {
  print("Função com retorno e sem parâmetro");
  print("O aluno está ${verificarAprovacao()}");
  print(verificarRestanteSalario());
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

//Atividade 1
String verificarRestanteSalario() {
  //Prevenção contra digitação
  try {
    print("Informe seu salário: ");
    var salarioString = stdin.readLineSync();
    var salario;
    if (salarioString != null) {
      salario = double.parse(salarioString);
    } else {
      salario = 0.0;
      print("Sem sálario");
    }
    print("Informe o desconto: ");
    var descontoString = stdin.readLineSync();
    var desconto;
    if (descontoString != null) {
      desconto = double.parse(descontoString);
    } else {
      desconto = 0.0;
      print("Sem sálario");
    }
    var resultadoSoma = salario - desconto;
    if (resultadoSoma > 0) {
      return "O salário está positivo.";
    } else {
      return "Acabou o salário.";
    }
  } catch (e) {
    return "Não foi possível definir os valores.\r\nTente escrever assim: 1200.00";
  }
}
