import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/139038/pexels-photo-139038.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  fit: BoxFit.cover),
            ),
            accountName: Text('ayo'),
            accountEmail: Text('ayodarvs@gmail.com')),
        ListTile(
          leading: const Icon(Icons.close),
          title: const Text('Close Drawer'),
          onTap: () {
            Scaffold.of(context).closeDrawer();
          },
        )
      ]),
    );
  }
}
