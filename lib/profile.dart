import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //appBar: AppBar(title: Text('You')),
        appBar: AppBar(
          title: Text("You"),
        ),

        body:

        Container(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Container(
                      width: double.infinity,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/profile_pic.png',),
                              ),
                              title: Text('Richard Feynman'),
                              subtitle: Text('Designer/Developer at MDG IITR'
                                  '                   '
                                  'Looking for friends'
                                  '                                              '
                                  'Hate Whatsapp and Facebook'),
                            ),
                          ],
                        ),
                      )
                  ),



                  new SizedBox(
                      width: 300.0,
                      height: 100.0,
                      //   child: Padding(child: ,)
                      child: TextButton(onPressed: null, child: Text("Level 1 info")

                          , style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),

                                  )
                              )
                          )
                      ))
                  ,new SizedBox(
                      width: 300.0,
                      height: 100.0,
                      child:  TextButton(onPressed: null, child: Text("Level 2 info")

                          , style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),

                                  )
                              )
                          )
                      ))

                  ,new SizedBox(
                      width: 300.0,
                      height: 100.0,
                      //   child: Padding(child: ,)
                      child: TextButton(onPressed: () {
                        Navigator.pop(context);
                        }, child: Text("Logout")

                          , style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),

                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),

                                  )
                              )
                          )
                      ))

                ]
            )

        )

    );

  }
}

