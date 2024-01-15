import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/data/models/job_model.dart';

part 'job_converter.g.dart';

@JsonSerializable()
class JobConverter extends JsonConverter<JobEntity, Map<String, dynamic>> {
  @override
  JobEntity fromJson(Map<String, dynamic> json) {
    return JobModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(JobEntity object) {
    return JobModel(
      active: object.active,
      company: object.company,
      createdAt: object.createdAt,
      description: object.description,
      title: object.title,
    ).toJson();
  }
}
