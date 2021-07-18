import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class _RegistrationState extends State<Registration> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1.5),
                        ),
                        child: Center(child:Text("Teacher",style: TextStyle(color: Colors.black,fontSize: 16),)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1.5),
                        ),
                        child: Center(child:Text("Student",style: TextStyle(color: Colors.black,fontSize: 16),)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Invalid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value.isEmpty || !RegExp(r'^(?@?)').hasMatch(value)) {
                      return 'Invalid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.grey[50]),
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Invalid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: confirm_pass,
                  validator: (value) {
                    if (value.isEmpty || value != password) {
                      return 'Invalid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey[50],
                      filled: true,
                      hintText: "Confirm Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                    },
                    color: Colors.blue,
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1.5),
                        ),
                        child: Center(child: Image.asset("assets/fb.png")),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1.5),
                           ),
                        child: Center(child: Image.asset("assets/google.jpg")),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                RichText(
                  text: TextSpan(
                      text: "Have not any Account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {Navigator.pop(context);},
                          text: " Login",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
