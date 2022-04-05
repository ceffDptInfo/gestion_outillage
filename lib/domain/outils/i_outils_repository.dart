import 'package:dartz/dartz.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';

import 'outils.dart';

abstract class IOutilsRepository {
  Stream<Either<OutilsFailure, Stream<List<OutilsDto>>>> watchAllOutils();
  Future<Either<OutilsFailure, Unit>> create(Outils outils);
  Future<Either<OutilsFailure, Unit>> update(Outils outils);
  Future<Either<OutilsFailure, Unit>> delete(Outils outils);
}
