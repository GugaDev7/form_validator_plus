import 'package:test/test.dart';
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  group('UsernameValidator', () {
    final validator = UsernameValidator();

    test('retorna null para username válido', () {
      expect(validator.validate('usuario_123'), isNull);
    });

    test('retorna erro para username inválido', () {
      expect(validator.validate(''), isNotNull);
      expect(validator.validate('ab'), isNotNull);
      expect(validator.validate('nome-com-espaco'), isNotNull);
      expect(validator.validate('nome!'), isNotNull);
    });
  });
}
