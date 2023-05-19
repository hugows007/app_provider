mixin DocValidator {
  String? docValidator(String? doc) {
    if ((doc ?? '').isEmpty) {
      return 'Documento inválido!';
    }

    return null;
  }
}
