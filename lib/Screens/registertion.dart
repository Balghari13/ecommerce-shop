
import 'package:flutter/material.dart';

import '../Utilis/color_theme.dart';
import '../Utilis/constants.dart';
import '../Utilis/utils.dart';
import '../Widgets/cutom_button.dart';
import '../Widgets/text_field.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   emailController.dispose();
    passwordController.dispose();
   nameController.dispose();
     addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height,
            width: screenSize.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Image.network(amazonLogo, height: screenSize.height*0.10,),
                    SizedBox(
                      height: screenSize.height*0.7,
                      width: screenSize.width*0.8,
                      child: FittedBox(
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          height: screenSize.height*0.8,
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Sign-Up',
                                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                              TextFieldWidget(title: 'Name', controller: nameController,
                                  obscureText: false
                                  , hintText: "Enter your Name"
                                      , icon: Icons.person),
                              TextFieldWidget(title: 'Email', controller: emailController,
                                  obscureText: false
                                  , hintText: "Enter your Email"
                                  , icon: Icons.email),
                              TextFieldWidget(title: 'Address', controller: addressController,
                                  obscureText: false
                                  , hintText: "Enter your Address"
                                  , icon: Icons.location_city),
                              TextFieldWidget(title: 'Password', controller: passwordController,
                                  obscureText: true
                                  , hintText: "Enter your Password"
                                  , icon: Icons.lock),
                              Align(
                                alignment: Alignment.center,
                                child: CustomButton(onPressed: (){}, color: yellowColor, isLoading: false, child: const Text('Sign Up',
                                  style: TextStyle(color: Colors.black,letterSpacing: 0.6),)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    CustomButton(onPressed: (){
                      Navigator.pop(context);
                        }, color: Colors.grey, isLoading: false, child: const Text('Back',
                      style: TextStyle(color: Colors.black,letterSpacing: 0.6),))

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
