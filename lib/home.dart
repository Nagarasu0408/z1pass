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



/*Login Resource Video:https://youtu.be/qqWzE5TjgQo?si=1HV1u3205UYLHQx5*/

/*//Errors
https://stackoverflow.com/questions/51767997/is-there-a-way-to-print-a-console-message-with-flutter
https://stackoverflow.com/questions/27609442/how-to-get-the-sha-1-fingerprint-certificate-in-android-studio-for-debug-mode
https://stackoverflow.com/questions/68089177/flutter-building-with-plugins-requires-symlink-support
https://www.google.com/search?q=AndroidManifest.xml+Error%3A+uses-sdk%3AminSdkVersion+16+cannot+be+smaller+than+version+19+declared+in+library+%5Bcom.google.firebase%3Afirebase-analytics-ktx%3A21.3.0%5D+C%3A%5CUsers%5CNAGARASU0408%5C.gradle%5Ccaches%5Ctransforms-3%5C3f1869941d719ed481de20d32e169260%5Ctransformed%5Cjetified-firebase-analytics-ktx-21.3.0%5CAndroidManifest.xml+as+the+library+might+be+using+APIs+not+available+in+16+Suggestion%3A+use+a+compatible+library+with+a+minSdk+of+at+most+16%2C+or+increase+this+project%27s+minSdk+version+to+at+least+19%2C+or+use+tools%3AoverrideLibrary%3D%22com.google.firebase.analytics.ktx%22+to+force+usage+(may+lead+to+runtime+failures)&rlz=1C1RXQR_enIN1018IN1018&oq=AndroidManifest.xml+Error%3A+uses-sdk%3AminSdkVersion+16+cannot+be+smaller+than+version+19+declared+in+library+%5Bcom.google.firebase%3Afirebase-analytics-ktx%3A21.3.0%5D+C%3A%5CUsers%5CNAGARASU0408%5C.gradle%5Ccaches%5Ctransforms-3%5C3f1869941d719ed481de20d32e169260%5Ctransformed%5Cjetified-firebase-analytics-ktx-21.3.0%5CAndroidManifest.xml+as+the+library+might+be+using+APIs+not+available+in+16+Suggestion%3A+use+a+compatible+library+with+a+minSdk+of+at+most+16%2C+or+increase+this+project%27s+minSdk+version+to+at+least+19%2C+or+use+tools%3AoverrideLibrary%3D%22com.google.firebase.analytics.ktx%22+to+force+usage+(may+lead+to+runtime+failures)&gs_lcrp=EgZjaHJvbWUyBggAEEUYOdIBBzE2OGowajSoAgCwAgA&sourceid=chrome&ie=UTF-8
https://stackoverflow.com/questions/65838381/flutter-run-error-no-named-parameter-with-the-name-keyboarddismissbehavior
https://stackoverflow.com/questions/65838381/flutter-run-error-no-named-parameter-with-the-name-keyboarddismissbehavior*/
