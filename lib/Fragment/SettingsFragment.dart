import 'package:flutter/material.dart';

class SettingsFragment extends StatefulWidget {
  const SettingsFragment({Key? key}) : super(key: key);

  @override
  State<SettingsFragment> createState() => _SettingsFragmentState();
}

class _SettingsFragmentState extends State<SettingsFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings Fragment"),
      ),
    );
  }
}
