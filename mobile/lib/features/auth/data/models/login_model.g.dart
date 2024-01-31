// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      emailVerified: json['emailVerified'] as bool,
      accessToken: json['accessToken'] as String,
      expireIn: json['expireIn'] as int,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'role': _$RoleEnumMap[instance.role]!,
      'emailVerified': instance.emailVerified,
      'accessToken': instance.accessToken,
      'expireIn': instance.expireIn,
      'active': instance.active,
    };

const _$RoleEnumMap = {
  Role.user: 'user',
  Role.admin: 'admin',
  Role.company: 'company',
};
