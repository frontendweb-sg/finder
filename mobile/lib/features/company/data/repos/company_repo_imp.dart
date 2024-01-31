import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/errors/failure.dart';
import 'package:mobile/core/utils/typedef.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';
import 'package:mobile/features/company/business/repos/company_repo.dart';
import 'package:mobile/features/company/data/datasource/company_datasource_service.dart';

class CompanyRepoImp extends CompanyRepo {
  final CompanyDatasourceService _companyDatasourceService;
  CompanyRepoImp(this._companyDatasourceService);
  @override
  ResultType<List<CompanyEntity>> getCompanies(QueryOptions options) async {
    try {
      final response = await _companyDatasourceService.getCompanies(options);
      return Right(response);
    } on GraphQLError catch (error) {
      return Left(Failure(message: error.message, statusCode: 500));
    }
  }
}
