import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spectromobi_app/routes/route_names.dart';

Drawer getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Spectromobi App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            GoRouter.of(context).pop(context);
            GoRouter.of(context).goNamed(RouteNames.homepage);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            GoRouter.of(context).pop(context);
            GoRouter.of(context).pushNamed(RouteNames.settings);
          },
        ),
      ],
    ),
  );
}