import '../interfaces/validator_interface.dart';

class RequiredValidator implements Validator {
  final String errorMessage;
  RequiredValidator({this.errorMessage = 'Campo obrigatório'});

  @override
  String? validate(String? value) {
    if (value == null || value.trim().isEmpty) return errorMessage;
    return null;
  }
}
