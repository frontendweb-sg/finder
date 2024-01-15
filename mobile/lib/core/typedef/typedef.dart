import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/failure.dart';

typedef ResultType<T> = Future<Either<Failure, T>>;
