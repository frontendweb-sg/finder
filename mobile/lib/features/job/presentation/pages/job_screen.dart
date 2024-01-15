import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/presentation/graphql/delete_query.dart';
import 'package:mobile/features/job/presentation/graphql/job_query.dart';
import 'package:mobile/features/job/presentation/provider/job.dart';
import 'package:mobile/features/job/presentation/widgets/job_card.dart';
import 'package:mobile/shared/widgets/no_data.dart';
import 'package:mobile/shared/widgets/toaster.dart';

class JobScreen extends ConsumerStatefulWidget {
  const JobScreen({super.key});
  @override
  ConsumerState<JobScreen> createState() {
    return _JobScreenState();
  }
}

class _JobScreenState extends ConsumerState<JobScreen> {
  void _getJobs() async {
    await ref.read(jobProvider.notifier).getJobs(
          QueryOptions(
            document: gql(JobQuery().queryDoc),
          ),
        );
  }

  void _deleteJob(String id) async {
    final deleteQuery = DeleteQuery(jobId: id);
    await ref.watch(jobProvider.notifier).deleteJob(
          MutationOptions(
            document: gql(deleteQuery.queryDoc),
            variables: deleteQuery.variables,
          ),
        );
    message("Job deleted successully!");
  }

  void message(String message) {
    toaster(context, message: message);
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _getJobs());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(jobProvider);
    return Scaffold(
      body: data.whenOrNull(
        data: (data) => data!.isEmpty
            ? noData()
            : ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
                itemCount: data.length,
                itemBuilder: (itemBuilder, index) => jobCard(
                  context,
                  entity: data[index],
                  onDelete: _deleteJob,
                ),
              ),
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => const Text('something went wrong!'),
      ),
    );
  }
}
