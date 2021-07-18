import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/registrationpage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isselect = true;
  bool select = true;

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
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("assets/quiz.jpg"),
                  ),
                ),
                SizedBox(
                  height: 50.0,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: isselect
                                ? Icon(Icons.check_circle_outline,
                                    color: Colors.grey, size: 17)
                                : Icon(
                                    Icons.check_circle,
                                    color: Colors.blue[700],
                                    size: 17,
                                  ),
                            onPressed: () {
                              setState(() {
                                isselect = !isselect;
                              });
                            }),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              color: isselect ? Colors.grey : Colors.blue[700]),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    color: Colors.blue,
                    child: Text(
                      "Login",
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Registration()));
                            },
                          text: " Register",
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
