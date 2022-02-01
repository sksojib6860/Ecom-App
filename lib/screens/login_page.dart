

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_login/Constants.dart';
import 'package:flutter_test_login/screens/regester_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  String _loginEmail = "";
  String _loginPassword = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  bool isVisible = true;

  Future <void> _alartDialogBuilder (String error) async {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Error'),
        content: Container(child: Text(error),),
        actions: [
          FlatButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('cancel'))
        ],
      );
      
    } );
  }

  void _submitForm() async {
    String? _loginFeedBack = await _loginAccount();
    if (_loginFeedBack != null){
      _alartDialogBuilder(_loginFeedBack);
    }
  }

  Future<String?> _loginAccount () async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _loginEmail,
       password: _loginPassword);
       return null;
    }
    
    on FirebaseAuthException catch (e){
      if (e.code == 'weak pass word'){
        return "the Password is weeak";
      }
      else if (e.code == 'email exist'){
        return 'The mail is already exist';
      }
      return e.message;
    } 
    catch(e){
      return e.toString();
    }

  }





 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('../images/cherry-blossoms.jpg'),fit: BoxFit.cover)),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 24.0,
                ),
                child: Text(
                  "Log in or Signup Page",
                  textAlign: TextAlign.center,
                  style: Constants.boldheading,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {
                          _loginEmail = value;
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          suffixIcon: emailController.text.isEmpty
                              ? Text('')
                              : GestureDetector(
                                  onTap: () {
                                    emailController.clear();
                                  },
                                  child: Icon(Icons.close)
                                  ),
                          hintText: 'example@mail.com',
                          labelText: 'Email',
                           focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2)
                                  ),

                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black,width: 2)
                          )
                                  ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: TextField(
                      obscureText: isVisible,
                      controller: passwordController,
                      onChanged: (value) {
                        _loginPassword = value;
                      },
                      decoration: InputDecoration(
                          // icon: Icon(Icons.mail),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                isVisible = !isVisible;
                                setState(() {});
                              },
                              child: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)
                                  ),
                          hintText: 'type your password',
                          labelText: 'Password',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2)
                                  ),

                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black,width: 2)
                          )
                                  ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                 
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                     IconButton(
                        onPressed: () {
                         _submitForm();
                        },
                        icon: Icon(Icons.login),
                     ),
                  
                   
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RigesterPage()),
                          );
                        },
                        icon: Icon(Icons.app_registration)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
