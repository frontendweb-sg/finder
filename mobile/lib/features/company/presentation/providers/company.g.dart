// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$companyDatasourceServiceHash() =>
    r'705176d44cc9bac013cfe63e6487bf9624b6a9b0';

///
/// data source servie provider
///
/// Copied from [companyDatasourceService].
@ProviderFor(companyDatasourceService)
final companyDatasourceServiceProvider =
    AutoDisposeProvider<CompanyDatasourceService>.internal(
  companyDatasourceService,
  name: r'companyDatasourceServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$companyDatasourceServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CompanyDatasourceServiceRef
    = AutoDisposeProviderRef<CompanyDatasourceService>;
String _$companyRepoHash() => r'2e3707165957d10cf50bb957bc81e8436fc6605d';

///
/// company repository provider
///
/// Copied from [companyRepo].
@ProviderFor(companyRepo)
final companyRepoProvider = AutoDisposeProvider<CompanyRepo>.internal(
  companyRepo,
  name: r'companyRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$companyRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CompanyRepoRef = AutoDisposeProviderRef<CompanyRepo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
