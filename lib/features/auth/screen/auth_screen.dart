// ignore_for_file: unused_field

import 'package:fh2/common/widgets/custom_button.dart';
import 'package:fh2/constants/globle_variable.dart';

import 'package:fh2/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final AuthService authService = AuthService();

  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
        name: _nameController.text);
  }

  void singInUser() {
    authService.singInUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('Welcome',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  )),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                title: const Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signupFormKey,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/fh2.png",
                          height: 120,
                        ),
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                              labelText: 'Full Name',
                              icon: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Icon(Icons.people),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              icon: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Icon(Icons.email),
                              )),
                          validator: (onValidate) {
                            if (onValidate!.isEmpty) {
                              return "* Required";
                            }
                            bool emailValid =
                                RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                    .hasMatch(onValidate);

                            if (!emailValid) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                          // onSaved: (val) => _password = val,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              icon: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Icon(Icons.lock),
                              )),
                          validator: (onValidate) {
                            if (onValidate!.isEmpty) {
                              return "* Required";
                            }
                            if (onValidate.length < 6) {
                              return 'Password too short.';
                            }
                            return null;
                          },
                          //onSaved: (val) => _passwordContr = val,
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          text: 'Sign Up',
                          onTap: () {
                            if (_signupFormKey.currentState!.validate()) {
                              signUpUser();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                title: const Text(
                  'Sign-In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signinFormKey,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/fh2.png",
                          height: 150,
                        ),
                        TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                icon: Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Icon(Icons.email),
                                )),
                            validator: (onValidate) {
                              if (onValidate!.isEmpty) {
                                return "* Required";
                              }
                              bool emailValid =
                                  RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                      .hasMatch(onValidate);

                              if (!emailValid) {
                                return "Invalid Email";
                              }
                              return null;
                            }
                            // onSaved: (val) => _password = val,
                            ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              icon: Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Icon(Icons.lock),
                              )),
                          validator: (onValidate) {
                            if (onValidate!.isEmpty) {
                              return "* Required";
                            }
                            if (onValidate.length < 6) {
                              return 'Password too short.';
                            }
                            return null;
                          },

                          //onSaved: (val) => _password = val,
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        CustomButton(
                          text: 'Sign-In',
                          onTap: () {
                            if (_signinFormKey.currentState!.validate()) {
                              singInUser();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        )),
      ),
    );
  }
}
