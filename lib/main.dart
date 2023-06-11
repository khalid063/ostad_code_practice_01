import 'package:flutter/material.dart';

import 'Fragment/HomeFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ostad Widget Practice',
      theme: ThemeData(primarySwatch: Colors.amber),

      /// Normal theme color
      darkTheme: ThemeData(primarySwatch: Colors.yellow),

      /// Dart theme color
      color: Colors.lightGreen,

      /// App primary color
      debugShowMaterialGrid: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  /// Snack bar massage
  _mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  /// Alert Diolog massage
  _myAlertDiolog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alart !"),
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(onPressed: () {
                    _mySnackBar("Delete Succes", context);
                    Navigator.of(context).pop();
                  }, child: Text("Yes")),
                  TextButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text("No"))
                ],
              )
          );
        }
    );
  }




  /// Scaffold Start
  @override
  Widget build(BuildContext context) {

    /// Button style start
    final ButtonStyle elevButtonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );

    /// Button style 2
    ButtonStyle elevButtonStyle2 = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60)
    );

    /// Scaffold Start
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'search',),
                Tab(icon: Icon(Icons.settings),text: 'settings',),
                Tab(icon: Icon(Icons.email),text: 'Home',),
                Tab(icon: Icon(Icons.contact_mail_outlined),text: 'Home',),
                Tab(icon: Icon(Icons.person),text: 'Home',),
                Tab(icon: Icon(Icons.favorite),text: 'Home',),
                Tab(icon: Icon(Icons.cabin),text: 'Home',),
                Tab(icon: Icon(Icons.safety_check),text: 'Home',),
                Tab(icon: Icon(Icons.safety_check),text: 'Home',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingsFragment(),
            ],
          ),
        )
    );

    /// Scaffold End
  }
}