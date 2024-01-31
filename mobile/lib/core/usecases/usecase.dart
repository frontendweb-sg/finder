import 'package:mobile/core/utils/typedef.dart';

abstract class UseCase<Type, Params> {
  ResultType<Type> call(Params params);
}
