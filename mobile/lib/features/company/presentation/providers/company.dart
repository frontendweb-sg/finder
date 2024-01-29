import 'package:mobile/features/company/business/repos/company_repo.dart';
import 'package:mobile/features/company/data/datasource/company_datasource_service.dart';
import 'package:mobile/features/company/data/repos/company_repo_imp.dart';
import 'package:mobile/features/company/presentation/providers/states/company_state.dart';
import 'package:mobile/shared/providers/graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// declare copany part file
part 'company.g.dart';

///
/// data source servie provider
@riverpod
CompanyDatasourceService companyDatasourceService(
        CompanyDatasourceServiceRef ref) =>
    CompanyDatasourceService(ref.watch(graphqlProvider));

///
/// company repository provider
@riverpod
CompanyRepo companyRepo(CompanyRepoRef ref) =>
    CompanyRepoImp(ref.watch(companyDatasourceServiceProvider));
