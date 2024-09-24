import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../controlles/user_controller.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userController = UserController();
  bool _rememberMe = false;

  void _submit() {
    if (_formKey.currentState!.validate() ?? false) {
      final user = _userController.createUser(
          _usernameController.text, _passwordController.text);
      print("Login as ${user.username}");
      Navigator.pop(context);
    } else {
      print("Login Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[100], // Background color
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 236, 179), // Background color of the form
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black12, // Shadow color
                blurRadius: 10, // Shadow blur
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
 padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child:SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Align(
      alignment: Alignment.centerLeft,
                child:  const Text(
                    'Welcome Back!!!',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                 Align(
  alignment: Alignment.centerLeft,
  child: Row(
    mainAxisSize: MainAxisSize.min, // This ensures the Row takes up only as much horizontal space as needed
    crossAxisAlignment: CrossAxisAlignment.center, // Align items in the center vertically
    children: <Widget>[
      Text(
        'Login',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      Spacer(), // Pushes the icon to the end of the row
     Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          size: 30,
                          CupertinoIcons.xmark_circle,
                          color: Color(0xffEF5858),
                        )),
    ],
  ),
),

                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Username/email',
                    
                      suffixIcon: Icon(Icons.visibility), // Eye icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    controller: _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock_outline), // Lock icon
                      
                      
                      border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (newValue) {
                              setState(() {
                                _rememberMe = newValue ?? false;
                              });
                            },
                          ),
                          const Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {}, // Forgot password action
                        child: const Text('Forgot Password?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      backgroundColor: Colors.black, // Button color
                      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20,color: Colors.amber),
                    ),
                 ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {}, // Register action
                    child: const Text(
                      "Don't have an account? Register",
                      style: TextStyle(
                        color: Colors.red, // Register link color
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
    ),);}}