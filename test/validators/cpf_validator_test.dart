import 'package:test/test.dart';
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  group('CpfValidator', () {
    final validator = CpfValidator();

    test('retorna null para CPF válido', () {
      expect(validator.validate('529.982.247-25'), isNull);
    });

    test('retorna erro para CPF inválido', () {
      expect(validator.validate('123.456.789-00'), isNotNull);
      expect(validator.validate('11111111111'), isNotNull);
      expect(validator.validate(''), isNotNull);
      expect(validator.validate(null), isNotNull);
    });
  });
}
