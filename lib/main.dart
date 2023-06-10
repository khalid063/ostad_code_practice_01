import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ostad Widget Practice',
      theme: ThemeData(primarySwatch: Colors.amber),   /// Normal theme color
      darkTheme: ThemeData(primarySwatch: Colors.yellow),   /// Dart theme color
      color: Colors.lightGreen,                             /// App primary color
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


  _mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }


  /// Scaffold Start
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar'),
        titleSpacing: 0,
        toolbarHeight: 40,      /// Default height 60
        toolbarOpacity: 0.9,
        elevation: 30,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: (){
            _mySnackBar("Massanger is Clicked", context);
          }, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){
            _mySnackBar("search is Clicked", context);
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            _mySnackBar("favorite is Clicked", context);
          }, icon: Icon(Icons.favorite)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.cyanAccent,
        child: Icon(Icons.add),
        onPressed: (){
          _mySnackBar('I am Floating Actio Button', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,    /// by this we can change active icon color,
        /// it is depende by -> theme: ThemeData(primarySwatch: Colors.amber),  -> of Material app widget
        selectedItemColor: Colors.greenAccent,      /// otherwise we can use this property for changeing "active icon color"
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index){
          if(index == 0){
            _mySnackBar('I am home bottom menu', context);
          }
          if(index == 1){
            _mySnackBar('I am contact bottom menu', context);
          }
          if(index == 2){
            _mySnackBar('I am Profile bottom menu', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  accountName: Text("Khalid Ahmad"),
                  accountEmail: Text("khalid@gmail.com"),
                  currentAccountPicture: Image.network("https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg"),
                  onDetailsPressed: (){
                    print("Drawer Header is Pressed");
                  },
                )
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home 1'),
              onTap: (){
                print("Home 1 is Clicked");
                ///Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));               /// for changing Activity
                /// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WhyChoiceUs()));		/// for active back exit button
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home 2'),
              onTap: (){
                print("Home 2 is Clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service_outlined),
              title: Text('Home 3'),
              onTap: (){
                print("Home 3 is Clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.holiday_village_rounded),
              title: Text('Home 4'),
              onTap: (){
                print("Home 4 is Clicked");
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  accountName: Text("Khalid Ahmad"),
                  accountEmail: Text("khalid@gmail.com"),
                  currentAccountPicture: Image.network("https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg"),
                  onDetailsPressed: (){
                    print("Drawer Header is Pressed");
                  },
                )
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home 1'),
              onTap: (){
                print("Home 1 is Clicked");
                ///Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));               /// for changing Activity
                /// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WhyChoiceUs()));		/// for active back exit button
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home 2'),
              onTap: (){
                print("Home 2 is Clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service_outlined),
              title: Text('Home 3'),
              onTap: (){
                print("Home 3 is Clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.holiday_village_rounded),
              title: Text('Home 4'),
              onTap: (){
                print("Home 4 is Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}