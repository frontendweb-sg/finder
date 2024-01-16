import 'package:json_annotation/json_annotation.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/data/models/job_model.dart';

class JobsConverter
    implements JsonConverter<List<JobEntity>, List<Map<String, dynamic>>> {
  const JobsConverter();
  @override
  List<JobEntity> fromJson(List<Map<String, dynamic>> json) {
    return json.map((e) => JobModel.fromJson(e)).toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<JobEntity> object) {
    if (object.isEmpty) {
      return [];
    }
    return object
        .map((object) => JobModel(
              active: object.active,
              company: object.company,
              createdAt: object.createdAt,
              description: object.description,
              title: object.title,
            ).toJson())
        .toList();
  }
}

class JobConverter implements JsonConverter<JobEntity, Map<String, dynamic>> {
  const JobConverter();

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
