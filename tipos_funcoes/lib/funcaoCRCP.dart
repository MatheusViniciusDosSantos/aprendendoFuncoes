import 'dart:io';

void show() {
  print("Função com retorno e com parâmetro");
  double valor2 = 8.5;
  var resultado = verificarAprovacao(6, valor2);
  print("O aluno está $resultado");

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
    print(verificarAprovacao(salario, desconto));
  } catch (e) {
    print("Não foi possível definir os valores.\r\nTente escrever assim: 1200.00");
  }
}

String verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? "Aprovado" : "Reprovado";
}

//Atividade 1
String verificarRestanteSalario(double salario, double desconto) {
  var resultadoSoma = salario - desconto;
  if (resultadoSoma > 0) {
    return"O salário está positivo.";
  } else {
    return"Acabou o salário.";
  }
}
