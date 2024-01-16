import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/errors/failure.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';

part 'company_state.freezed.dart';

@freezed
class CompanyState with _$CompanyState {
  factory CompanyState.initial() = _Initial;
  factory CompanyState.loading() = _Loading;
  factory CompanyState.success(List<CompanyEntity> data) = _Success;
  factory CompanyState.failed(Failure failure) = _Failed;
}
