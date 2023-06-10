import 'package:flutter/material.dart';

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
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alart !"),
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(onPressed: (){
                    _mySnackBar("Delete Succes", context);
                    Navigator.of(context).pop();
                  }, child: Text("Yes")),
                  TextButton(onPressed: (){
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

    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar'),
        titleSpacing: 0,
        toolbarHeight: 40,

        /// Default height 60
        toolbarOpacity: 0.9,
        elevation: 30,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: () {
            print("button 1 is clicked");
          }, icon: Icon(Icons.comment)),
        ],
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          _myAlertDiolog(context);
        }, child: Text("Click me"), style: elevButtonStyle),
      ),
    );

    /// Scaffold End
  }
}