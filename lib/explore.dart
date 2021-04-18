import 'package:flutter/material.dart';
import 'zukerberg.dart';
import 'profile.dart';
import 'requests.dart';


class MyApp2 extends StatelessWidget {
  const MyApp2({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStateful(),
    );
  }
}
class MyStateful extends StatefulWidget {
  const MyStateful({Key key}) : super(key: key);

  @override
  _IceBreaker2 createState() => _IceBreaker2();
}

class _IceBreaker2 extends State<MyStateful> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    BodyLayout(),
    BodyLayout2(),
    MyHomePage()
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NavPage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Explore"),
                  backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  title: Text("Requests"),
                  backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text("Profile"),
                  backgroundColor:
                  Colors.blue
              ),
            ],
          ),
        )
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Explore')),
        body: _myListView(context)
    );
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/ad.jpg'),
          ),
          title: Text('Aryan Dhankani'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('ad');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dm.jpg'),
          ),
          title: Text('Dhruv Mehrotra'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('dm');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/st.jpg'),
          ),
          title: Text('Saumya Talera'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('st');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/an.jpg'),
          ),
          title: Text('Aman_1'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('an');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/an.jpg'),
          ),
          title: Text('Aman_2'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('an');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/an.jpg'),
          ),
          title: Text('Anand'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('an');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/tn.jpg'),
          ),
          title: Text('Tanya'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('tn');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/mz.jpg'),
          ),
          title: Text('Mark Zukerberg'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IceBreaker4()),
            );
            print('mz');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/ad.jpg'),
          ),
          title: Text('Aditya'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('ad');}
      ),
    ],
  );
}