import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:spectromobi_app/routes/route_names.dart';
import 'package:spectromobi_app/widgets/app_bar.dart';
import 'package:spectromobi_app/widgets/modules_grid.dart';

class ModulesPage extends StatelessWidget {
  const ModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: getAppBar(context), body: ModulesScreen());
  }
}
