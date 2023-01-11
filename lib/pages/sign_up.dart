import 'package:flutter/material.dart';
import 'package:sagarmatha_project/pages/loginPage.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_up> {
  @override
  bool ischecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 26,
            horizontal: 25,
          ),
          children: [
            Image.asset(
              'images/mountainelogo 3.png',
              width: 147,
              height: 135,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Create your account',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return (Sign_in());
                // }));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: Text('Sign up'),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return (LoginPage());
                    }));
                  },
                  child: Text('Sign in', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
