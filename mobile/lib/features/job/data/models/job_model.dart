import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel extends JobEntity {
  const JobModel({
    super.title,
    super.description,
    super.company,
    super.createdAt,
    super.active,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobModelToJson(this);
}
