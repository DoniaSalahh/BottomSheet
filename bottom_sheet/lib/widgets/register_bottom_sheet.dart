import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
  String confirmPassword = '';
  bool? _isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello...',
                style: TextStyle(fontSize: 20,),
                 
                ),
              const SizedBox(height: 10),
                 Align(
  alignment: Alignment.centerLeft,
  child: Row(
    mainAxisSize: MainAxisSize.min, // This ensures the Row takes up only as much horizontal space as needed
    crossAxisAlignment: CrossAxisAlignment.center, // Align items in the center vertically
    children: <Widget>[
      Text(
        'Register',
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
                  hintText: "Username or Email",
                  border: OutlineInputBorder(),
                   suffixIcon: Icon(Icons.visibility), // Eye icon
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 236, 179),
                  
                ),
                onChanged: (value) {
                  username = value;
                },
              ),
              const SizedBox(height: 10),
                const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "course",
                border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.visibility), // Eye icon
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 236, 179),
              ),
            ),
const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock_outline), // Lock icon
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 236, 179),
                ),
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock_outline), // Lock icon
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 236, 179),
                ),
                obscureText: true,
                onChanged: (value) {
                  confirmPassword = value;
                },
          ),
              const SizedBox(height: 10),
             
              const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle registration logic here
                },
                style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black, // Button color
                      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20,color:Colors.amber),
                    ),
                    ),
                 
                
              
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle navigation to login
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.red,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              
            ),
            
            ),
            ],
          ),
        ),
     ),);}
}