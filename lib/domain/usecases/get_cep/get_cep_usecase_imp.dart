import 'package:cep_contacts/domain/entities/cep_entity.dart';
import 'package:cep_contacts/domain/repositories/get_cep_repository.dart';
import 'package:cep_contacts/domain/usecases/get_cep/get_cep_usecase.dart';

class GetCepUsecaseImp implements GetCepUsecase {
  final GetCepRepository _getCepRepository;

  GetCepUsecaseImp(this._getCepRepository);

  @override
  CepEntity call(String cep) {
    return _getCepRepository(cep);
  }
}
