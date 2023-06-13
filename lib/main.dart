import 'package:flutter/material.dart';
import 'package:ostad_pre_record_video_practice/Activity/Activity_three.dart';
import 'package:ostad_pre_record_video_practice/Activity/activity_two.dart';

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
  /// Button style start
  final ButtonStyle elevButtonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      )
  );


  /// Scaffold Start
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 10,
          width: 200,
          child: Icon(
              Icons.camera,
            color: Colors.deepOrange,
            size: 50,
          ),
        ),
      )
    );

    /// Scaffold End
  }
}