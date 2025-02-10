import 'package:cep_contacts/domain/entities/cep_entity.dart';
import 'package:cep_contacts/domain/repositories/save_cep_repository.dart';
import 'package:cep_contacts/domain/usecases/save_cep/save_cep_usecase.dart';

class SaveCepUsecaseImp implements SaveCepUsecase {
  final SaveCepRepository _saveCepRepository;

  SaveCepUsecaseImp(this._saveCepRepository);

  @override
  Future<bool> call(CepEntity cepEntity) async {
    return await _saveCepRepository(cepEntity);
  }
}
