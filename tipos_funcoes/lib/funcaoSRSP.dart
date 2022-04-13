import 'dart:ffi';
import 'dart:io';

void show() {
  print("Função sem retorno e sem parâmetro");
  verificarAprovacao();
}

void verificarAprovacao() {
  print("Informe a primeira nota: ");
  var nota1String = stdin.readLineSync();
  double nota1;
  if (nota1String != null) {
    //Transforma em double
    nota1 = double.parse(nota1String);
  } else {
    nota1 = 0.0;
  }

  print("Informe a segunda nota: ");
  var nota2String = stdin.readLineSync();
  double nota2;

  //Podemos omitir o if se nossa veriavel aceitar valores nulos, isso é feito
  // com o sinal !
  //Exemplo: double = nota2 = double.parse(stdin.readLineSync()!);
  if (nota2String != null) {
    nota2 = double.parse(nota2String);
  } else {
    nota2 = 0.0;
  }
  double media = (nota1 + nota2) / 2;

  //Em casos de 2 opções na condição também podemos fazer o if ternário
  //Exemplo: print((media >= 6) ? "Aprovado" : "Reprovado");
  if (media >= 6) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}

//Atividade 1
void verificarRestanteSalario() {
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
      print("O salário está positivo.");
    } else {
      print("Acabou o salário.");
    }
  } catch (e) {
    print(
        "Não foi possível definir os valores.\r\nTente escrever assim: 1200.00");
  }
}

/*
Funções void que não tem retorno geralemnte são muito especificas para algo

Variavel do tipo de inferencia: ela recebe o valor e com base nesse valor e
 assim vai ser definido o tipo da variavel
*/
