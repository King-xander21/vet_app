import 'package:flutter/material.dart';
//import 'package:vet_app/sign_in.dart';

class AccountSetup extends StatelessWidget {
  const AccountSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 7,
                width: 70,
                margin: EdgeInsets.only(top: 70, left: 25),
                decoration: BoxDecoration(
                  color: Color(0xFF16A99F),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 7,
                width: 70,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 7,
                width: 70,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 7,
                width: 70,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: 4),
              Container(
                height: 7,
                width: 70,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: Text(
              'Account Setup!',
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 25,
                color: Color(0xFF16A99F),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25, top: 20),
            width: 343,
            height: 282,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 184, 176, 176),
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                    ),
                    labelText: 'What is your full name',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF16A99F)),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 184, 176, 176),
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                    ),
                    labelText: 'What is your Email',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF16A99F)),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'urbanist',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 184, 176, 176),
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                    ),
                    labelText: 'Create a password for your account',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF16A99F)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 350),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: SizedBox(
                  width: 165,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Color(0xFFECECEC),
                      ),
                      foregroundColor: WidgetStateProperty.all(
                        Color(0xFF16A99F),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    child: Text('Back to Sign In'),
                  ),
                ),
              ),
              SizedBox(width: 13),
              SizedBox(
                width: 165,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xFF16A99F)),
                    foregroundColor: WidgetStateProperty.all(Color(0xFFECECEC)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
