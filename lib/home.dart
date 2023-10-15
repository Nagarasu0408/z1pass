import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Card(
                elevation: 20,
                color: Color(0x1AFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 20,width: 325,),
                      const Text(style: TextStyle(color: Colors.white),'Hello'),
                      TextButton(onPressed: () {}, child: const Text('Press')),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Card(
                elevation: 20,
                color: Color(0x1AFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 20,width: 325,),
                      const Text(style: TextStyle(color: Colors.white),'Hello'),
                      TextButton(onPressed: () {}, child: const Text('Press')),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Card(
                elevation: 20,
                color: Color(0x1AFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 20,width: 325,),
                      const Text(style: TextStyle(color: Colors.white),'Hello'),
                      TextButton(onPressed: () {}, child: const Text('Press')),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.pinkAccent,selectedItemColor: Colors.grey,items: [
        BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Database",icon: Icon(Icons.ad_units)),
        BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.account_circle_outlined)),
      ],),
    )
    );
  }
}
