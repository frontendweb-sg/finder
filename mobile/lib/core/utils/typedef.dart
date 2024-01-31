import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/failure.dart';

typedef ResultType<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultType<void>;

typedef MapData = Map<String, dynamic>;
