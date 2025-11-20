import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class NoParamsUseCase<T> {
  Future<Either<Failure, T>> call();
}

class NoParams {}
