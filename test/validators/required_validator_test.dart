import 'package:test/test.dart';
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  group('RequiredValidator', () {
    final validator = RequiredValidator();

    test('retorna null para valor preenchido', () {
      expect(validator.validate('algum valor'), isNull);
    });

    test('retorna erro para valor vazio', () {
      expect(validator.validate(''), isNotNull);
    });

    test('retorna erro para valor nulo', () {
      expect(validator.validate(null), isNotNull);
    });
  });
}
