import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_page.png',
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'enter user name', labelText: 'User name'),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'enter password', labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text('Login'),
                    style: TextButton.styleFrom(
                        minimumSize: Size(
                      150,
                      40,
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
