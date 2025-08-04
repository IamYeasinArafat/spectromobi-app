import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spectromobi_app/routes/route_names.dart';
import 'package:spectromobi_app/widgets/app_bar.dart';
import 'package:spectromobi_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: getAppBar(context),
      body: Center(
        child: Column(
          children: [
            Text("Home Page"),
            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(RouteNames.modules);
            }, child: Text("Modules"))
          ],
        )
        ),
    );
  }


}