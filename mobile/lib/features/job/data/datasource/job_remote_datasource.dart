import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/data/models/job_model.dart';

abstract class IJobRemoteDatasource {
  Future<List<JobModel>?> getJobs(QueryOptions options);
  Future<JobModel> createJob(MutationOptions mutationOptions);
  Future<JobModel> deleteJob(MutationOptions mutationOptions);
}

class JobRemoteDatasource implements IJobRemoteDatasource {
  final GraphQLClient _graphQLClient;

  JobRemoteDatasource(this._graphQLClient);

  @override
  Future<List<JobModel>?> getJobs(QueryOptions options) async {
    try {
      final result = await _graphQLClient.query(options);
      List<dynamic> data = result.data!['jobs'];
      return data.map((e) => JobModel.fromJson(e)).toList();
    } on GraphQLError catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<JobModel> createJob(MutationOptions<Object?> mutationOptions) async {
    try {
      final result = await _graphQLClient.mutate(mutationOptions);
      Map<String, dynamic> json = result.data!["createJob"];
      JobModel model = JobModel.fromJson(json);
      return model;
    } on GraphQLError catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<JobModel> deleteJob(MutationOptions<Object?> mutationOptions) async {
    try {
      final result = await _graphQLClient.mutate(mutationOptions);
      Map<String, dynamic> json = result.data!["deleteJob"];
      JobModel model = JobModel.fromJson(json);
      return model;
    } on GraphQLError catch (error) {
      throw Exception(error);
    }
  }
}
