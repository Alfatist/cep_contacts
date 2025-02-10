import 'package:cep_contacts/domain/entities/cep_entity.dart';

abstract class SaveCepUsecase {
  Future<bool> call(CepEntity cepEntity);
}
