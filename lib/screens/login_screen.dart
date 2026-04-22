import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'home_screen.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController phoneController = TextEditingController();
  String selectedCountryCode = "+91";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// 🔹 HEADER (LOGO CENTER + SKIP RIGHT)
                SizedBox(
                  height: 120,
                  child: Stack(
                    children: [

                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/Logo.png",
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                /// TEXT
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Please enter your phone number",
                  style: TextStyle(color: Colors.grey),
                ),

                SizedBox(height: 25),

                /// PHONE FIELD
                Row(
                  children: [

                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CountryCodePicker(
                        onChanged: (country) {
                          selectedCountryCode = country.dialCode!;
                        },
                        initialSelection: 'IN',
                        favorite: ['+91', 'IN'],
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          hintText: "Mobile Number",
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 25),

                /// CONTINUE BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),

                    onPressed: () {

                      String phone = phoneController.text.trim();

                      if (phone.length < 10) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Enter valid number")),
                        );
                        return;
                      }

                      String fullPhone = selectedCountryCode + phone;

                      /// 👉 OPEN OTP SCREEN
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(
                            phoneNumber: fullPhone,
                          ),
                        ),
                      );
                    },

                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                /// OR
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                SizedBox(height: 20),

                /// GOOGLE BUTTON
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Google Sign-In Clicked")),
                      );
                    },

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset(
                          "assets/google_logo.png",
                          height: 25,
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}