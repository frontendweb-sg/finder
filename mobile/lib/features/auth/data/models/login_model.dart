import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/utils/role.dart';
import 'package:mobile/features/auth/business/entities/login_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  @Implements<LoginEntity>()
  const factory LoginModel({
    required String id,
    required String name,
    required String email,
    required String mobile,
    required Role role,
    required bool emailVerified,
    required String accessToken,
    required int expireIn,
    required bool active,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
