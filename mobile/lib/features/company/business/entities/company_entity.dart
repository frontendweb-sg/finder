import 'package:equatable/equatable.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';

class CompanyEntity extends Equatable {
  final String? name;
  final String? description;
  final bool? active;
  final DateTime? createdAt;
  final List<JobEntity>? jobs;

  const CompanyEntity({
    this.name,
    this.description,
    this.active,
    this.createdAt,
    this.jobs,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        active,
        createdAt,
        jobs,
      ];
}
