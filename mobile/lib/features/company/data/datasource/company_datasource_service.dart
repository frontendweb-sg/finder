import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/company/data/models/company_model.dart';

class CompanyDatasourceService {
  final GraphQLClient _client;
  CompanyDatasourceService(this._client);

  ///
  /// Fetch all companies
  Future<List<CompanyModel>> getCompanies(QueryOptions options) async {
    try {
      final result = await _client.query(options);
      List<dynamic> data = result.data!['companies'];
      return data.map((e) => CompanyModel.fromJson(e)).toList();
    } catch (error) {
      throw Exception(error);
    }
  }
}
