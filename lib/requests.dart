import 'package:flutter/material.dart';



class BodyLayout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Requests')),
        body:_myListView(context)
    );}
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
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 1"),),
          onTap: () {
            print('ad');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dm.jpg'),
          ),
          title: Text('Dhruv Mehrotra'),
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 1"),),
          onTap: () {
            print('dm');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/st.jpg'),
          ),
          title: Text('Saumya Talera'),
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 2"),),
          onTap: () {
            print('st');}
      ),
    ],
  );
}