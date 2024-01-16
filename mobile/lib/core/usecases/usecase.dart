import 'package:mobile/core/typedef/typedef.dart';

abstract class UseCase<Type, Params> {
  ResultType<Type> call({Params params});
}
