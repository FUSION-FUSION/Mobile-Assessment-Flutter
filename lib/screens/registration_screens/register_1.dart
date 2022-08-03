import 'package:flutter/material.dart';
import 'register_2.dart';

class Registration1 extends StatelessWidget {
  const Registration1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg-app-cloud.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // "Welcome" Text
                const SizedBox(height: 70),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),

                // "Create an account to get..."
                const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    'Create an account to get started with Cargo Express',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // "Full name" field
                FormItem(
                  headerText: 'Full Name',
                  onEditingComplete: () {},
                ),

                // "Your E-mail" field
                FormItem(
                  headerText: 'Your E-mail',
                  onEditingComplete: () {},
                ),

                // Phone Number
                PhoneNumberFormItem(
                  headerText: 'Phone Number',
                  onEditingComplete: () {},
                ),

                // Password
                FormItem(
                  headerText: 'Password',
                  onEditingComplete: () {},
                ),

                // Confirm Password
                FormItem(
                  headerText: 'Confirm Password',
                  onEditingComplete: () {},
                ),

                // "Already have an account? ..."
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                ),

                // Back button and next button
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Back Button
                      CustomButton2(
                        color: Colors.white70,
                        text: 'Back',
                        textColor: Colors.black87,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        borderColor: Colors.white,
                      ),

                      // Next Button
                      CustomButton2(
                        color: Colors.cyan,
                        text: 'Next',
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registration2()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FormItem extends StatelessWidget {
  final String headerText;
  final Function onEditingComplete;

  const FormItem({
    Key? key,
    required this.headerText,
    required this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            headerText,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: SizedBox(
            height: 42,
            child: TextFormField(
              onEditingComplete: () {
                onEditingComplete();
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              textAlignVertical: const TextAlignVertical(y: -0.8),
              style: const TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneNumberFormItem extends StatelessWidget {
  final String headerText;
  final Function onEditingComplete;

  const PhoneNumberFormItem({
    Key? key,
    required this.headerText,
    required this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            headerText,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: 42,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black54,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        '+234',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    onEditingComplete: () {
                      onEditingComplete();
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    textAlignVertical: const TextAlignVertical(y: -0.8),
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final Function onPressed;
  final Color borderColor;

  const CustomButton2({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onPressed,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: MaterialButton(
        elevation: 0,
        onPressed: () {
          onPressed();
        },
        color: color,
        height: 50,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
