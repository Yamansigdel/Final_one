import 'package:flutter/material.dart';
import 'package:sagarmatha_project/Models/LoginModel.dart';
import 'package:sagarmatha_project/pages/home.dart';
import 'package:sagarmatha_project/pages/sign_up.dart';
import 'package:sagarmatha_project/services/networkHelper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passVisible = true, value = false;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 25,
            ),
            children: [
              Image.asset(
                'images/mountainelogo 3.png',
                width: 160,
                height: 150,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Log in to your account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 34, 108, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: .0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 0),
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 76, 76, 76),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 77, 77, 77),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  controller: passwordController,
                  obscureText: passVisible,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 0),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passVisible = !passVisible;
                        });
                      },
                      icon: Icon(
                        passVisible ? Icons.visibility : Icons.visibility_off,
                        color: Color.fromARGB(255, 64, 64, 64),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 74, 74, 74),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 57, 57, 57),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Checkbox(
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Remember Me',
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 35,
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 34, 108, 255),
                            letterSpacing: .2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  var phoneData = phoneController.text;
                  var passwordData = passwordController.text;
//9849203704
//Nepal@12344
                  Login logindata = await NetworkHelper().getLogin(
                    phone: phoneData,
                    password: passwordData,
                  );

                  var status = logindata.status;
                  print(status);

                  if (status == 'success') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  } else {
                    //print('error');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('Log In'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Don\'t have account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (Sign_up());
                        }));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 34, 108, 255),
                          letterSpacing: .7,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
