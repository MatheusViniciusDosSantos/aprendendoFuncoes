import 'package:tipos_funcoes/tipos_funcoes.dart' as tipos_funcoes;
import 'package:tipos_funcoes/funcaoCRCP.dart' as comRetornoComParametro;
import 'package:tipos_funcoes/funcaoCRSP.dart' as comRetornoSemParametro;
import 'package:tipos_funcoes/funcaoSRCP.dart' as semRetornoComParametro;
import 'package:tipos_funcoes/funcaoSRSP.dart' as semRetornoSemParametro;

void main(List<String> arguments) {
  comRetornoComParametro.show();
  comRetornoSemParametro.show();
  semRetornoComParametro.show();
  semRetornoSemParametro.show();
}
/**
 * A função é usada quando precisamos realizar algo dentro do sistema
 * A função geralmente é criada quando encontramos coisas em comum para unificá-las e tornar o código mais oranizado
 * Existem funções criadas pelo programados e já pré-definidas pelas bibliotecas.
 * 
 * O que seria a Top Level function?
 * É uma função que pode ser chamda em qualquer lugar sem depender de nada
 * 
 * Sintaxe da função:
 * nome(paremetrô);
 * 
 * Quando existe atribuição a função tem que ter retorno
 * var avariavel = nomeFuncao(parametro);
 * 
 * é possível termos uma função no print, ela precisa de retorno.
 * print("mostrando o retorno da função: ${nomeFuncao(parametro)}");
 * 
 * também é possível usar uma função como parametro da outra, ela também precisa ter parâmetro.
 * funcaoComFuncao(nomeFuncao(parametro));
*/