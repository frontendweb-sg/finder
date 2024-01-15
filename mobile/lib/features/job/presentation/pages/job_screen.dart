import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';
import 'package:mobile/features/job/presentation/provider/job.dart';

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
            document: gql(r'''
                        query ExampleQuery {
                          jobs {
                            company {
                              id
                            }
                          }
                        }
                  '''),
          ),
        );
  }

  @override
  void initState() {
    // _getJobs();
    super.initState();
    Future.microtask(() => _getJobs());
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(jobProvider);
    print('data ---- $data');
    return const Scaffold(
        body: Center(
      child: Text("JOb"),
    ));
  }
}
