# form_validator_plus

[![pub package](https://img.shields.io/pub/v/form_validator_plus.svg)](https://pub.dev/packages/form_validator_plus)
[![Dart](https://img.shields.io/badge/Dart-%3E%3D3.0.0-blue)](https://dart.dev/)

Valide campos de formulário de forma simples, reutilizável e sem dependências de interface gráfica. Compatível com Dart puro e Flutter.

## Sumário
- [Instalação](#instalação)
- [Exemplo de uso](#exemplo-de-uso)
- [Validadores disponíveis](#validadores-disponíveis)
- [Testes](#testes)
- [Licença](#licença)

## Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  form_validator_plus: ^0.1.0
```

Rode:
```sh
dart pub get
```

## Exemplo de uso

```dart
import 'package:form_validator_plus/form_validator_plus.dart';

void main() {
  print(EmailValidator().validate('exemplo@email.com')); // null
  print(PasswordValidator().validate('senha123')); // null
  print(RequiredValidator().validate('')); // 'Campo obrigatório'
  print(CpfValidator().validate('529.982.247-25')); // null
  print(UsernameValidator().validate('usuario_123')); // null
}
```

## Validadores disponíveis
- EmailValidator
- PasswordValidator
- RequiredValidator
- CpfValidator
- UsernameValidator

## Testes

Execute os testes unitários com:

```sh
dart test
```

## Licença

MIT
