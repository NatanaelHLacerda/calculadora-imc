import 'package:calculadora_imc/model/home_model.dart';

class HomeController {
  PessoaModel? calculateImc(double peso, double altura) {
    double imc = peso / (altura * altura);

    if (imc <= 16.9) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Muito abaixo do peso');
    } else if (imc >= 17 && imc <= 18.4) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Abaixo do peso');
    } else if (imc >= 18.5 && imc <= 24.9) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Peso Normal');
    } else if (imc >= 25 && imc <= 29.9) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Acima do peso');
    } else if (imc >= 30 && imc <= 34.9) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Obesidade Grau 1');
    } else if (imc >= 35 && imc <= 40) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Obesidade grau 2');
    } else if (imc > 40) {
      return PessoaModel(
          peso: peso, altura: altura, imc: imc.toStringAsFixed(2), details: 'Obesidade grau 3');
    }
    return null;
  }
}
