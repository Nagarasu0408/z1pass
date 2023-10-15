import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:z1pass/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Login(),
    );
  }
}


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  //Initialize Firebase App
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  String _email="";
  String _password="";
  void _handleLogin() async{
    try{
      UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: _email, password: _password);

      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

    }
    catch(e){
      print("Error : $e");
    }
  }

  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg"))),
      child: Form(
        key:_formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Z1Pass",style: TextStyle(color:Colors.black87,fontSize: 55,fontFamily: "BloodySweet"),),
            Text("LOGIN",style: TextStyle(fontSize:20,fontFamily: "Designer"),),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: TextField(
                // validator:(value){
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter UserName';
                //   }
                //   return null;
                // },
                controller: _emailController,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 18,color: Colors.greenAccent),
                decoration: InputDecoration(hintText: "Username or Email",hintStyle: TextStyle(fontSize: 16,fontFamily: "Designer"),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    icon: Icon(Icons.email)),

                onChanged: (value){
                  setState(() {
                    _email=value;
                  });
                },
              ),
            ),
            // SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: TextField(
                // validator:(value){
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter Password';
                //   }
                //   return null;
                // },
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: TextStyle(fontSize: 18,color: Colors.greenAccent),
                decoration: InputDecoration(hintText: "Password",hintStyle: TextStyle(fontSize: 16,fontFamily: "Designer"),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    icon: Icon(Icons.security_rounded)
                ),
                onChanged: (value){
                  setState(() {
                    _password=value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                _handleLogin();
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
