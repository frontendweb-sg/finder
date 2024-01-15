import 'package:flutter/material.dart';
import 'package:mobile/features/job/presentation/pages/job_screen.dart';
import 'package:mobile/shared/widgets/bottom_navigation.dart';
import 'package:mobile/shared/widgets/sidebar.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finder'),
      ),
      body: const JobScreen(),
      drawer: const Sidebar(),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
