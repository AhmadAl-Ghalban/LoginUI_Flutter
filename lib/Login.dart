// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/mobile_login.png'),
                  )),
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) => {print(value)},
                onChanged: (value) => {print(value)},
                decoration: InputDecoration(
                    label: Text('E-mail'),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility)),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  // color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                      ))
                ],
              ),
              Container(
                  // color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  // color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    color: Color.fromARGB(255, 79, 170, 245),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'FaceBook',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
