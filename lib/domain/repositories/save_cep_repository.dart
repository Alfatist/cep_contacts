import 'package:cep_contacts/domain/entities/cep_entity.dart';

abstract class SaveCepRepository {
  Future<bool> call(CepEntity cepEntity);
}
