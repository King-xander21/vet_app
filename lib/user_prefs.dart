import 'package:flutter/material.dart';

class UserPrefs extends StatefulWidget {
  const UserPrefs({super.key});

  @override
  State<UserPrefs> createState() => _UserPrefsState();
}

class _UserPrefsState extends State<UserPrefs> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 7,
                  width: 60,
                  margin: EdgeInsets.only(top: 70, left: 35),
                  decoration: BoxDecoration(
                    color: Color(0xFF16A99F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 7,
                  width: 60,
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Color(0xFF16A99F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 7,
                  width: 60,
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 7,
                  width: 60,
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: 7,
                  width: 60,
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 35),
              child: Text(
                'User Preferences!',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 25,
                  color: Color(0xFF16A99F),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 35, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interested in animals',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Which of the following are you interested in? (Check all that apply)',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      color: Color.fromARGB(255, 157, 152, 152),
                    ),
                  ),
                  SizedBox(height: 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Adopting a pet',
                        style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Reporting lost or found pets',
                        style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Donating to animal causes',
                        style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Learning about pet care',
                        style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Volunteering at shelters',
                        style: TextStyle(fontFamily: 'Urbanist', fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 273),

                  Row(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 155,
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
                            child: Text('Back'),
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      SizedBox(
                        width: 155,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Color(0xFF16A99F),
                            ),
                            foregroundColor: WidgetStateProperty.all(
                              Color(0xFFECECEC),
                            ),
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
            ),
          ],
        ),
      ),
    );
  }
}
