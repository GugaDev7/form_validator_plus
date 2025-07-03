import 'package:test/test.dart';
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  group('PasswordValidator', () {
    final validator = PasswordValidator();

    test('retorna null para senha válida', () {
      expect(validator.validate('senha123'), isNull);
    });

    test('retorna erro para senha vazia', () {
      expect(validator.validate(''), isNotNull);
    });

    test('retorna erro para senha curta', () {
      expect(validator.validate('abc'), isNotNull);
    });
  });
}
