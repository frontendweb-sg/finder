import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/errors/failure.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/business/repos/job_repo.dart';
import 'package:mobile/features/job/data/datasource/job_remote_datasource.dart';
import 'package:mobile/core/utils/typedef.dart';

class JobRepoImp extends JobRepo {
  final JobRemoteDatasource _jobRemoteDatasource;

  JobRepoImp(this._jobRemoteDatasource);

  @override
  ResultType<JobEntity> createJob(MutationOptions options) async {
    try {
      final response = await _jobRemoteDatasource.createJob(options);
      return Right(response);
    } on GraphQLError catch (error) {
      return Left(Failure(message: error.message, statusCode: 200));
    }
  }

  @override
  ResultType<JobEntity> deleteJob(MutationOptions options) async {
    try {
      final response = await _jobRemoteDatasource.deleteJob(options);
      return Right(response);
    } on GraphQLError catch (error) {
      return Left(Failure(message: error.message, statusCode: 200));
    }
  }

  @override
  ResultType<JobEntity> getJob(String id) {
    throw UnimplementedError();
  }

  @override
  ResultType<List<JobEntity>> getJobs(QueryOptions options) async {
    try {
      final response = await _jobRemoteDatasource.getJobs(options);
      return Right(response!);
    } on GraphQLError catch (error) {
      return Left(Failure(message: error.message, statusCode: 200));
    }
  }

  @override
  ResultType<JobEntity> updateJob(String id, JobEntity job) {
    // TODO: implement updateJob
    throw UnimplementedError();
  }
}
