import 'package:test/test.dart';
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  group('EmailValidator', () {
    final validator = EmailValidator();

    test('retorna null para email válido', () {
      expect(validator.validate('teste@email.com'), isNull);
    });

    test('retorna erro para email vazio', () {
      expect(validator.validate(''), isNotNull);
    });

    test('retorna erro para email inválido', () {
      expect(validator.validate('invalido'), isNotNull);
    });
  });
}
