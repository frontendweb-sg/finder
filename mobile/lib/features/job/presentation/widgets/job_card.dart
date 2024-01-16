import 'package:flutter/material.dart';
import 'package:mobile/features/job/business/entities/job_entity.dart';

///
/// Job card
Widget jobCard(
  BuildContext context, {
  required JobEntity entity,
  required Function(String id) onDelete,
}) {
  return Dismissible(
    key: ValueKey(entity.id),
    direction: DismissDirection.endToStart,
    confirmDismiss: (direction) {
      return showDialog(
        context: context,
        builder: (builder) => AlertDialog(
          title: const Text("Are you sure?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("Cancel"),
            ),
            const SizedBox(
              width: 15.0,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("Delete"),
            )
          ],
        ),
      );
    },
    onDismissed: (DismissDirection direction) {
      onDelete(entity.id!);
    },
    background: Container(
      alignment: Alignment.centerRight,
      color: Colors.red,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    ),
    child: Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(entity.title!),
        ],
      ),
    ),
  );
}

// Dismissible(
//                   key: ValueKey(data[index].id),
//                   direction: DismissDirection.startToEnd,
//                   background: Container(
//                     alignment: Alignment.centerLeft,
//                     color: Colors.red,
//                     child: const Icon(
//                       Icons.delete,
//                       color: Colors.white,
//                     ),
//                   ),
//                   onDismissed: (DismissDirection direction) =>
//                       _deleteJob(data[index].id!),
//                   child: ListTile(
//                     title: Text(data[index].title!),
//                     subtitle: Text(data[index].id!),
//                   ),
//                 )
