class RegexPatterns { 
  static final RegExp email = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w{2,}$');
  static final RegExp password = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
}
