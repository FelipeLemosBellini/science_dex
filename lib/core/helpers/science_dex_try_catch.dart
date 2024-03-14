import 'package:dartz/dartz.dart';
import 'package:science_dex/core/exception/science_dex_exception.dart';

Future<Either<ScienceDexException, T>> executeWithCatch<T>(Future Function() func) async {
  try {
    return Right(await func.call());
  } catch (error) {
    return Left(ScienceDexException(error: "Houve um erro, tente novamente"));
  }
}
