import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_store/home.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String emial = 'e@e.com';
  final String pass = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Image.asset(
                  'assets/images/user.jpg',
                  height: 150,
                  width: 150,
                ),
                Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return 'please type email';
                      }
                      return null;
                    },
                    controller: emailCont,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        hintText: 'Email',
                        label: Text('Email'),
                        labelStyle: TextStyle(color: Colors.orange),
                        hintStyle:
                            TextStyle(color: Colors.red.withOpacity(0.5)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: passwordCont,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return 'please type password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key_sharp,
                          color: Colors.red,
                        ),
                        label: Text('Password'),
                        labelStyle: TextStyle(color: Colors.orange),
                        hintText: 'password',
                        hintStyle:
                            TextStyle(color: Colors.red.withOpacity(0.5)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (emailCont.text == emial &&
                            passwordCont.text == pass) {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text('The email or password is not correct'),
                            backgroundColor: Colors.red,
                          ));
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text('Login')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
