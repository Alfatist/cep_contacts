import 'package:cep_contacts/domain/entities/cep_entity.dart';

abstract class GetCepRepository {
  CepEntity call(String cep);
}
