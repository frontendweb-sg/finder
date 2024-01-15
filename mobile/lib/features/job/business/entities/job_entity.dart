import 'package:equatable/equatable.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';

class JobEntity extends Equatable {
  final String? title;
  final String? description;
  final DateTime? createdAt;
  final bool? active;
  final dynamic company;

  const JobEntity({
    this.title,
    this.description,
    this.createdAt,
    this.active,
    this.company,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        createdAt,
        active,
        company,
      ];
}
