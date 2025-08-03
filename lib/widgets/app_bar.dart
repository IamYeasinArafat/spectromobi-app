import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // for context.pop()
import 'package:spectromobi_app/core/theme.dart';

AppBar getAppBar(BuildContext context) {
  final canPop = Navigator.canPop(context);

  return AppBar(
    automaticallyImplyLeading: false, 
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: myAppTheme.primaryColor,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    title: const Text("Spectro Mobi"),
    leading: Builder(
  builder: (context) => IconButton(
    icon: Icon(canPop ? Icons.arrow_back : Icons.menu),
    onPressed: () {
      if (canPop) {
        context.pop();
      } else {
        Scaffold.of(context).openDrawer(); // Now it works ✅
      }
    },
  ),
),

    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          // Handle settings action
        },
      ),
    ],
  );
}
