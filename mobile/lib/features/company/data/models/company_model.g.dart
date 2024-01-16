// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      active: json['active'] as bool?,
      jobs:
          _$JsonConverterFromJson<List<Map<String, dynamic>>, List<JobEntity>>(
              json['jobs'], const JobsConverter().fromJson),
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'jobs':
          _$JsonConverterToJson<List<Map<String, dynamic>>, List<JobEntity>>(
              instance.jobs, const JobsConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
