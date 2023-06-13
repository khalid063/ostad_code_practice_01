import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_pre_record_video_practice/Activity/Activity_three.dart';
import 'package:ostad_pre_record_video_practice/main.dart';

class ActivityTwo extends StatefulWidget {
  const ActivityTwo({Key? key}) : super(key: key);

  @override
  State<ActivityTwo> createState() => _ActivityTwoState();
}

class _ActivityTwoState extends State<ActivityTwo> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Two'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActivityThree()));
              },
              child: Text("Activity Three"),
              style: elevButtonStyle),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeActivity()));
              },
              child: Text("Home Activity"),
              style: elevButtonStyle),
        ],
      )),
    );
  }
}
