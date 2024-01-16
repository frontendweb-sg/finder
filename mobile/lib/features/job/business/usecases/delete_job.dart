import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/typedef/typedef.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/business/repos/job_repo.dart';

///
/// Delete job
/// Please provide query and variable in below formats
///
class DeleteJobUseCase extends UseCase<JobEntity, MutationOptions> {
  final JobRepo _jobRepo;

  DeleteJobUseCase(this._jobRepo);

  @override
  ResultType<JobEntity> call({MutationOptions? params}) async {
    return await _jobRepo.deleteJob(params!);
  }
}
