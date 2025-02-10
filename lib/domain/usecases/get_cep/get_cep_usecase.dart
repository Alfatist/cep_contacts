import 'package:cep_contacts/domain/entities/cep_entity.dart';

abstract class GetCepUsecase {
  CepEntity call(String cep);
}
