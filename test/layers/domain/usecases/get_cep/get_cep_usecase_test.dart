import 'package:cep_contacts/domain/entities/cep_entity.dart';
import 'package:cep_contacts/domain/repositories/get_cep_repository.dart';
import 'package:cep_contacts/domain/usecases/get_cep/get_cep_usecase.dart';
import 'package:cep_contacts/domain/usecases/get_cep/get_cep_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

const String nicknameToGet = "Avenue Street";

class GetCepRepositoryImpMocked implements GetCepRepository {
  @override
  CepEntity call(String cep) {
    CepEntity cepEntity = CepEntity(cep: cep);
    if (cepEntity.cep == "11111111") cepEntity.nickname = nicknameToGet;

    return cepEntity;
  }
}

main() {
  test(
      "Should Cep Return Nickname Mocked When Value is 11111111 with other characters",
      () async {
    GetCepUsecase useCase = GetCepUsecaseImp(
      GetCepRepositoryImpMocked(),
    );

    const String cep = "11.111-111";

    var result = await useCase(cep);

    expect(result.nickname, isNotNull);
  });

  test("Should Cep Return Nickname Null When Value Is Not 11111111", () async {
    GetCepUsecase useCase = GetCepUsecaseImp(
      GetCepRepositoryImpMocked(),
    );

    const String cep = "25800-100";

    var result = await useCase(cep);

    expect(result.nickname, isNull);
  });
}
