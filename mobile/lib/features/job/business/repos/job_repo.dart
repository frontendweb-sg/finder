import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/core/typedef/typedef.dart';

///
/// Job abstract class
///
abstract class JobRepo {
  ResultType<List<JobEntity>> getJobs(QueryOptions options);
  ResultType<JobEntity> getJob(String id);
  ResultType<JobEntity> createJob(MutationOptions options);
  ResultType<JobEntity> updateJob(String id, JobEntity job);
  ResultType<JobEntity> deleteJob(MutationOptions options);
}
