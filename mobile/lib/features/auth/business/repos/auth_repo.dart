import 'package:mobile/core/utils/typedef.dart';
import 'package:mobile/features/auth/business/entities/login_entity.dart';

///
/// Auth repo
/// 1. [Login] - a login repository to perform login (email,password)
/// 2. [Register] - register handler pass (name,email,password,mobile)
abstract class AuthRepo {
  ResultType<LoginEntity> login(Map<String, dynamic> payload);
  ResultVoid register(Map<String, dynamic> payload);
}
