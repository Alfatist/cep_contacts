import 'package:cep_contacts/domain/entities/cep_entity.dart';
import 'package:cep_contacts/domain/repositories/save_cep_repository.dart';
import 'package:cep_contacts/domain/usecases/save_cep/save_cep_usecase.dart';
import 'package:cep_contacts/domain/usecases/save_cep/save_cep_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveCepRepositoryImpMocked implements SaveCepRepository {
  @override
  Future<bool> call(CepEntity cepEntity) async {
    return cepEntity.cep.length > 5;
  }
}

main() {
  test("Should save cep with success", () async {
    SaveCepUsecase useCase = SaveCepUsecaseImp(
      SaveCepRepositoryImpMocked(),
    );

    CepEntity cep = CepEntity(cep: "51245000", nickname: "pretty cep");

    var result = await useCase(cep);

    expect(result, true);
  });
}
