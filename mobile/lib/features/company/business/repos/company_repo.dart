import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/typedef/typedef.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';

///
/// Company repository abstract class
abstract class CompanyRepo {
  ResultType<List<CompanyEntity>> getCompanies(QueryOptions options);
}
