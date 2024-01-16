import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/business/repos/job_repo.dart';
import 'package:mobile/core/typedef/typedef.dart';

///
/// Get all jobs
class GetJobsUseCase extends UseCase<List<JobEntity>, QueryOptions> {
  final JobRepo _jobRepo;

  GetJobsUseCase(this._jobRepo);

  @override
  ResultType<List<JobEntity>> call({QueryOptions? params}) async {
    return await _jobRepo.getJobs(params!);
  }
}
