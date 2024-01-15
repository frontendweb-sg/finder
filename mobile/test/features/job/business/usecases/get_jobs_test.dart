import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/features/company/business/entities/company_entity.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/business/usecases/get_jobs.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/helpers.mocks.dart';

void main() {
  late GetJobsUseCase getJobsUseCase;
  late MockJobRepo mockJobRepo;

  setUp(() {
    mockJobRepo = MockJobRepo();
    getJobsUseCase = GetJobsUseCase(mockJobRepo);
  });

  final jobTestData = JobEntity(
      active: true,
      company: CompanyEntity(
        active: true,
        createdAt: DateTime.utc(2024),
        description: 'hi',
        jobs: const [],
        name: 'rsi',
      ),
      createdAt: DateTime.utc(2024),
      title: 'Sr developer',
      description: 'hello world');

  test('should fetch data', () async {
    // arrange
    when(mockJobRepo.getJobs()).thenAnswer(
      (realInvocation) async => Right([jobTestData]),
    );

    // act
    final result = await getJobsUseCase.call();

    // result
    expect(result, Right([jobTestData]));
  });
}
