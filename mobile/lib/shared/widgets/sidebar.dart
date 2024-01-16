import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SidebarState();
  }
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                ),
                accountEmail: Text('pk@gmailcom'),
                accountName: Text('Pradeep Kumar'),
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              const Text('Version: 1.0.0'),
              TextButton(onPressed: () {}, child: const Text('Logout'))
            ],
          ),
        ],
      ),
    );
  }
}
