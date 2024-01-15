import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/data/models/job_model.dart';
import 'package:mobile/core/typedef/typedef.dart';

abstract class IJobRemoteDatasource {
  Future<List<JobModel>?> getJobs(QueryOptions options);
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
}
