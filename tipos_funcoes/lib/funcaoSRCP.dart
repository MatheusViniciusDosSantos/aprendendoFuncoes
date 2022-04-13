import 'dart:io';

void show() {
  print("Função sem retorno e com parâmetro");
  var nota1 = 6.5;
  var nota2 = 10.0;
  verificarAprovacao(nota1, nota2);

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
    verificarAprovacao(salario, desconto);
  } catch (e) {
    print("Não foi possível definir os valores.\r\nTente escrever assim: 1200.00");
  }
}

void verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print((media >= 6) ? "Aprovado" : "Reprovado");
}

//Atividade 1
void verificarRestanteSalario(double salario, double desconto) {
  var resultadoSoma = salario - desconto;
  if (resultadoSoma > 0) {
    print("O salário está positivo.");
  } else {
    print("Acabou o salário.");
  }
}
