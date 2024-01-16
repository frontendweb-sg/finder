import 'package:json_annotation/json_annotation.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/data/models/job_converter.dart';

part 'company_model.g.dart';

@JsonSerializable(converters: [JobsConverter()])
class CompanyModel extends CompanyEntity {
  const CompanyModel({
    super.name,
    super.description,
    super.createdAt,
    super.active,
    super.jobs,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
