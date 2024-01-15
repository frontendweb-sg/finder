import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/business/repos/job_repo.dart';
import 'package:mobile/features/job/business/usecases/get_jobs.dart';
import 'package:mobile/features/job/data/datasource/job_remote_datasource.dart';
import 'package:mobile/features/job/data/repos/job_repo_imp.dart';
import 'package:mobile/shared/providers/graphql.dart';

class JobNotifier extends StateNotifier<AsyncValue<List<JobEntity>?>> {
  final JobRepo _jobRepo;

  JobNotifier(this._jobRepo) : super(const AsyncValue.data([]));

  ///
  /// Fetch all jobs
  Future<void> getJobs(QueryOptions options) async {
    try {
      print(options);
      state = const AsyncLoading();

      final response = await GetJobsUseCase(_jobRepo).call(params: options);

      state = response.fold(
        (l) => AsyncValue.error(l, StackTrace.current),
        (r) => AsyncValue.data(r),
      );

      print('loaded');
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}

///
/// Job datasource provider
final jobDatasourceProvider = Provider<JobRemoteDatasource>(
  (ref) => JobRemoteDatasource(
    ref.watch(graphqlProvider),
  ),
);

///
/// Job repo provider
final jobRepoProvider = Provider<JobRepo>(
  (ref) => JobRepoImp(
    ref.watch(
      jobDatasourceProvider,
    ),
  ),
);

///
/// Job provider
final jobProvider =
    StateNotifierProvider<JobNotifier, AsyncValue<List<JobEntity>?>>(
  (ref) => JobNotifier(
    ref.watch(
      jobRepoProvider,
    ),
  ),
);

final fetchJobs = FutureProvider(
    (ref) async => ref.watch(jobProvider.notifier).getJobs(QueryOptions(
          document: gql(r'''
                        query ExampleQuery {
                          jobs {
                            company {
                              id
                            }
                          }
                        }
                  '''),
        )));
