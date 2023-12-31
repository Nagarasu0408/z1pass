import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:z1pass/firebase_options.dart';

import 'Auth/Loginpage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),));
}
class Z1pass extends StatelessWidget {
  const Z1pass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title:const Center(child: Text("Z1-Pass",style: TextStyle(fontSize:30),)),
          backgroundColor:Colors.lightGreenAccent,
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: CardExample(),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Issues",icon: Icon(Icons.account_tree_outlined)),
          BottomNavigationBarItem(label: "Settings",icon: Icon(Icons.settings)),
        ]),
      ),
    );

  }
}


class CardExample extends StatelessWidget {
  const CardExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.black12,
        onTap: () {
          debugPrint('KCE');
        },
        child:  Image(image: NetworkImage("https://kce.ac.in/new/wp-content/uploads/2022/12/logo-grade-kce-2.png"),),
      ),
    );
  }
}
