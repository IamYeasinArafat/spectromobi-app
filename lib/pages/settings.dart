import 'package:flutter/material.dart';
import 'package:spectromobi_app/widgets/app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
    );
  }
}