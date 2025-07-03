import '../interfaces/validator_interface.dart';
import '../utils/regex_patterns.dart';

class EmailValidator implements Validator {
  final String errorMessage;
  EmailValidator({this.errorMessage = 'E-mail inválido'});

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) return errorMessage;
    if (!RegexPatterns.email.hasMatch(value)) return errorMessage;
    return null;
  }
}
