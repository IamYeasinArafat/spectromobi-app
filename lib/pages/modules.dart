
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spectromobi_app/app/routes/route_names.dart';
import 'package:spectromobi_app/widgets/app_bar.dart';

class ModulesPage extends StatelessWidget {
  const ModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Modules Page"),
          ElevatedButton(
            onPressed: ()=>{
              context.goNamed(RouteNames.homepage)
              },
            child: Text("Home Page"))
        ],
      ),
    );
  }
}