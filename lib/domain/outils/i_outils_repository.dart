import 'package:dartz/dartz.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';
import 'package:kt_dart/kt.dart';

import 'outils.dart';

abstract class IOutilsRepository {
  Future<Either<OutilsFailure, KtList<Outils>>> watchAllOutils();
  Stream<Either<OutilsFailure, KtList<Outils>>> watchBorrowedOutils();
  Stream<Either<OutilsFailure, KtList<Outils>>> watchOutilFromFirebase();
  Future<Either<OutilsFailure, Unit>> create(Outils outils);
  Future<Either<OutilsFailure, Unit>> update(Outils outils);
  Future<Either<OutilsFailure, Unit>> delete(Outils outils);
}
