import '../interfaces/validator_interface.dart';
import '../utils/regex_patterns.dart';

class PasswordValidator implements Validator {
  final String errorMessage;
  PasswordValidator({this.errorMessage = 'Senha inválida'});

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) return errorMessage;
    if (!RegexPatterns.password.hasMatch(value)) return errorMessage;
    return null;
  }
}
