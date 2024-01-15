import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/features/job/presentation/provider/job.dart';
import 'package:mobile/shared/providers/date.dart';

class CreateJobScreen extends ConsumerStatefulWidget {
  const CreateJobScreen({super.key});
  @override
  ConsumerState<CreateJobScreen> createState() {
    return _CreateJobScreenState();
  }
}

class _CreateJobScreenState extends ConsumerState<CreateJobScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  bool _active = false;
  final TextEditingController _createdAt = TextEditingController(text: '');

  void onSave() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      await ref.watch(jobProvider.notifier).addJob(
            MutationOptions(
              document: gql(r'''
                mutation jobMutation($job: inputJob){
                  createJob(job: $job){
                    title
                    description
                    active
                    createdAt
                  }
                }
              '''),
              variables: {
                "job": {
                  "title": _title,
                  "description": _description,
                  "createdAt": _createdAt.text
                }
              },
            ),
          );

      backToPage();
    }
  }

  void backToPage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 5),
        content: Text("Job added successfully!"),
      ),
    );
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    super.dispose();
    _createdAt.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Todo"),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(onPressed: onSave, child: const Text("Add")),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text("Add Job"),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    initialValue: _title,
                    onSaved: (value) {
                      _title = value!;
                    },
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return "Field is required";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    initialValue: _description,
                    textInputAction: TextInputAction.done,
                    onSaved: (value) {
                      _description = value!;
                    },
                    validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return "Field is required";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _createdAt,
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(DateTime.now().year),
                        lastDate: DateTime(2050),
                      );

                      setState(() {
                        _createdAt.text =
                            ref.watch(dateFormatProvider)(date!).toString();
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: _active,
                    title: const Text("Active"),
                    onChanged: (value) {
                      setState(() {
                        _active = value!;
                      });
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }
}
