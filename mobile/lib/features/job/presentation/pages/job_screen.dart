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
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("JObs")),
    );
  }
}
