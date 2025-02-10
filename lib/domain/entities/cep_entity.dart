class CepEntity {
  final String cep;
  String? nickname;
  CepEntity({required String cep, this.nickname})
      : cep = stringCepFormatter(cep);

  static String stringCepFormatter(String cep) {
    return cep.replaceAll(new RegExp(r'[^0-9]'), ''); // cep is only digit
  }
}
