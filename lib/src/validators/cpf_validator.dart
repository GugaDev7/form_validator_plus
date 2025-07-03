import '../interfaces/validator_interface.dart';

class CpfValidator implements Validator {
  final String errorMessage;
  CpfValidator({this.errorMessage = 'CPF inválido'});

  @override
  String? validate(String? value) {
    if (value == null) return errorMessage;
    final cpf = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (cpf.length != 11) return errorMessage;
    if (RegExp(r'^(\d)\1{10}$').hasMatch(cpf)) return errorMessage;

    // Validação dos dígitos verificadores
    for (var j = 9; j < 11; j++) {
      int sum = 0;
      for (var i = 0; i < j; i++) {
        sum += int.parse(cpf[i]) * ((j + 1) - i);
      }
      int mod = (sum * 10) % 11;
      if (mod == 10) mod = 0;
      if (mod != int.parse(cpf[j])) return errorMessage;
    }
    return null;
  }
}