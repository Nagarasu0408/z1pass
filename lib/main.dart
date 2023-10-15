import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'RobotoMono'),
    debugShowCheckedModeBanner: false,
    home: Z1pass(),));
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
        bottomNavigationBar: BottomNavigationBarExample(),
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

class OutPass extends StatelessWidget {
  const OutPass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}





class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
