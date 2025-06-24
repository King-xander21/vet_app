import 'package:flutter/material.dart';
//import 'package:vet_app/main.dart';
import 'package:vet_app/account_setup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const circleDiameter = 545.0;
    const imageDiameter = 477.0;
    const overflowFactor = 1.2;

    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, -200),
              child: SizedBox(
                height: circleDiameter,
                child: OverflowBox(
                  maxWidth: screenWidth * overflowFactor,
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: screenWidth * overflowFactor,
                    height: circleDiameter,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF16A99F),
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: imageDiameter,
                      height: imageDiameter,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/dogs.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -100), // Move it UP by 100
              child: Container(
                width: 343,
                height: 203,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Password'),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Password will be greater than 6 digit',
                      // textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: Text('Forgot Password'),
                      ),
                      //Text('Forgot Password'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 343,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color(0xFF16A99F)),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                child: Text('Sign In'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Text('dont have any account?'),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountSetup()),
                      );
                    },
                    child: Text(
                      'Sign Up Now',
                      style: TextStyle(color: Color(0xFF16A99F)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    // return Scaffold(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       Container(
    //         padding: const EdgeInsets.all(
    //           20,
    //         ), // This creates space inside the teal circle
    //         width: MediaQuery.of(context).size.width,
    //         height: 545,
    //         decoration: const BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: Color(0xFF16A99F),
    //         ),
    //         child: Center(
    //           // Centers the image container
    //           child: Container(
    //             width: 477, // Adjust to desired image size
    //             height: 528,
    //             decoration: const BoxDecoration(
    //               shape: BoxShape.circle,
    //               image: DecorationImage(
    //                 image: AssetImage('assets/img/dogs.jpg'),
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       // Add other widgets below the large circle
    //     ],
    //   ),
    //);