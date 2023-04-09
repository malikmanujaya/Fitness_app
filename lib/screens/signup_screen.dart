// import 'package:firebase_auth98/services/firebase_auth_service.dart';
import 'package:firebase_auth98/services/firebase_auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../services/firebase_auth_service.dart';
import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
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
                SizedBox(
          height:20, 
         ),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Hello! Register to get \nStarted", style: TextStyle(
                      color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold,
                  )),
                ),
                  CustomizedTextfield(myController: _usernameController,hintText: "Username",isPassword: false, ),
                  CustomizedTextfield(myController: _emailController,hintText: "Email",isPassword: false, ),
                  CustomizedTextfield(myController: _passwordController,hintText: "Password",isPassword: true, ),
                  CustomizedTextfield(myController: _confirmPasswordController,hintText: "Confirm Password",isPassword: true, ),
        
        
                  
                  CustomizedButton(
          buttonText: "Register",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () async{
                  try {
                      await FirebaseAuthService().signup(
                        _emailController.text.trim(),
                      _passwordController.text.trim());

                      Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen()));
                      
                    
                  } on FirebaseException catch (e) {
                    print(e.message);
                    
                  }
                  // Navigator.push(context, 
                  // MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
         ),
        
        
         SizedBox(
          height:10, 
         ),
         Padding(
           padding: const EdgeInsets.fromLTRB(68,8,8,8.0),
           child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const Text("Already have an account?",
              style: TextStyle(
          color: Color(0xff1E232C),
          fontSize: 15,
              )),
              InkWell(
                  onTap: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (_) => const LoginScreen())
                     );
                  },
                child: Text("  Login Now",
                style: TextStyle(
                 color: Color(0xff35C2C1),
                 fontSize: 15,
                ) 
                ),
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