import 'package:cep_contacts/domain/entities/cep_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Should Entity Not Null", () {
    CepEntity cepEntity = CepEntity(cep: "22500000", nickname: "sunshine");
    expect(cepEntity, isNotNull);
  });

  test("Should Accept Nickname null", () {
    CepEntity cepEntity = CepEntity(cep: "00000000");
    expect(cepEntity, isNotNull);
  });

  test("Should Cep Only Has Digits", () {
    CepEntity cepEntity = CepEntity(cep: "22500-000");
    expect(int.parse(cepEntity.cep), isNotNull);
  });

  test("Should Cep Nickname Be Able to Change", () {
    CepEntity cepEntity = CepEntity(cep: "22500-000", nickname: "ugly cep");
    const String newNickname = "pretty cep";
    cepEntity.nickname = newNickname;
    expect(cepEntity.nickname, newNickname);
  });
}
