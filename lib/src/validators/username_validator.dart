import '../interfaces/validator_interface.dart';

class UsernameValidator implements Validator {
  final String errorMessage;
  final int minLength;
  final int maxLength;
  UsernameValidator({
    this.errorMessage = 'Nome de usuário inválido',
    this.minLength = 3,
    this.maxLength = 20,
  });

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) return errorMessage;
    if (value.length < minLength || value.length > maxLength) return errorMessage;
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) return errorMessage;
    return null;
  }
}
