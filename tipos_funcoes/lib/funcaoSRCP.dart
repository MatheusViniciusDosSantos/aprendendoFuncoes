void show() {
  print("Função sem retorno e com parâmetro");
  var nota1 = 6.5;
  var nota2 = 10.0;
  verificarAprovacao(nota1, nota2);
}

void verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print((media >= 6) ? "Aprovado" : "Reprovado");
}
