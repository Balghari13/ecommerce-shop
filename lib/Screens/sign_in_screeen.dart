import 'package:e_shop/Utilis/color_theme.dart';
import 'package:e_shop/Utilis/constants.dart';
import 'package:e_shop/Utilis/utils.dart';
import 'package:e_shop/Widgets/cutom_button.dart';
import 'package:e_shop/Widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
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
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Center(
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      amazonLogo,
                      height: screenSize.height *0.10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      width: screenSize.width*0.8,
                      height: screenSize.height*0.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,)
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sign In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                          TextFieldWidget(title: 'Email',
                              controller: emailController,
                              obscureText: false, hintText: 'Enter your email', icon: Icons.email,
                          ),
                          TextFieldWidget(title: 'Password',
                            controller: passwordController,
                            obscureText: true, hintText: 'Enter your password',
                            icon: Icons.lock,
                          ),
                          Align(
                            alignment: Alignment.center,
                              child: CustomButton(
                                isLoading: false,
                                color: yellowColor,
                                  child: const Text('Sign In',
                                      style: TextStyle(color: Colors.black, letterSpacing: 0.6),), onPressed: (){})
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                          height: 1,color: Colors.grey,
                        )),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("New to Amazon", style: TextStyle(color: Colors.grey),),
                        ),
                        Expanded(child: Container(
                          height: 1, color: Colors.grey,
                        ))

                      ],
                    ),
                    CustomButton(onPressed: (){}, color: Colors.grey.shade500,
                        isLoading: false, child: const Text('Create an Account',
                      style: TextStyle(color: Colors.black, letterSpacing: 0.6),))


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
