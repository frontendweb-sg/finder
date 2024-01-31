import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/utils/typedef.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';
import 'package:mobile/features/company/business/repos/company_repo.dart';

///
/// Get all company
/// 1. Provide query doc
/// 2. Provide query variables
class GetCompaniesUseCase extends UseCase<List<CompanyEntity>, QueryOptions> {
  final CompanyRepo _companyRepo;
  GetCompaniesUseCase(this._companyRepo);

  @override
  ResultType<List<CompanyEntity>> call(QueryOptions params) async {
    return await _companyRepo.getCompanies(params);
  }
}
