import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth98/screens/forgot_password.dart';
import 'package:firebase_auth98/screens/signup_screen.dart';
import 'package:firebase_auth98/services/firebase_auth_service.dart';
import 'package:firebase_auth98/widgets/customized_textfield.dart';
import 'package:firebase_auth98/widgets/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/firebase_auth_service.dart';
import '../widgets/customized_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(icon: Icon(Icons.arrow_back_ios_sharp), onPressed: (){
                       Navigator.pop(context);
                    }),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Welcome Back! Glad \nto see you,Again", style: TextStyle(
                      color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold,
                  )),
                ),
                  CustomizedTextfield(myController: _emailController,hintText: "Enter your Email",isPassword: false, ),
                  CustomizedTextfield(myController: _passwordController,hintText: "Enter your Password",isPassword: true, ),
                   Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                        },
                        child: Text("Forgot Password?",
                        style: TextStyle(
                          color: Color(0xff6A707C),
                          fontSize: 15,
                        ),
                        ),
                      ),
                    ),
                  ),
                  CustomizedButton(
            buttonText: "Login",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () async{
try {

  await FirebaseAuthService().login(
    _emailController.text.trim(), 
  _passwordController.text.trim());
  if(FirebaseAuth.instance.currentUser != null){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));

  }
  else {
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Invalid Username or Password. Please register again or make sure that username and password is correct"),
      actions: [
        ElevatedButton(
        child: Text("Register Now"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
        },
        )
      ],
    ));
  }
}on FirebaseException catch (e) {
  print(e.message);
  
}

                  // Navigator.push(context, 
                  // MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
           ),
          
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
              children: [
                Container(
                  height: 1, 
                  width: MediaQuery.of(context).size.height*0.18,
                  color: Colors.grey,
                ),
                const Text("Or Login with"),
                 Container(
                  height: 1,
                  width: MediaQuery.of(context).size.height*0.18,
                  color: Colors.grey,
                ),
              ],),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon:  const Icon(
            FontAwesomeIcons.google,
                  ),
                  onPressed: () async {
                    await FirebaseAuthService().logininwithgoogle();
                 
                 if(FirebaseAuth.instance.currentUser != null){
                  if(!mounted) return;

                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=> Dashboard()));
                 } else{
                  showDialog(
                    context: context,
                    builder: (context)=> const AlertDialog(
                      title: Text(
                        "No user exist with this details. Please register first"
                      ),
                    ));
                 }
                  },
                
                ),
              )
             ],),
           ),
          
           SizedBox(
            height: 140, 
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(68,8,8,8.0),
             child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
               Text("Don't have an account?",
                style: TextStyle(
                  color: Color(0xff1E232C),
                  fontSize: 15,
                )),
                Text("  Register Now",
                style: TextStyle(
                 color: Color(0xff35C2C1),
                 fontSize: 15,
                ) 
                ),
              ],
             ),
           )
              ],
            ),
          ),
        )
      ),
    );
  }
}