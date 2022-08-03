import 'package:flutter/material.dart';
import 'register_3_congratulations.dart';

class Registration2 extends StatelessWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7EBEF),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFFe7EBEF),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg-app-cloud.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Verification" text
            const Text(
              'Verification!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),

            // "We sent you as SMS ..." text
            Padding(
              padding: const EdgeInsets.only(right: 100, bottom: 30),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(text: 'We sent you an '),
                      TextSpan(
                        text: 'SMS ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF46A5BA),
                        ),
                      ),
                      TextSpan(text: 'code on number '),
                      TextSpan(
                        text: '+2348108960610',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF46A5BA),
                        ),
                      ),
                    ]),
              ),
            ),

            // Row of InputFields. Still just containers for now\
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomInputBox(),
                SizedBox(width: 10),
                CustomInputBox(),
                SizedBox(width: 10),
                CustomInputBox(),
                SizedBox(width: 10),
                CustomInputBox(),
                SizedBox(width: 10),
                CustomInputBox(),
              ],
            ),

            // "Code expired"
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Code expired',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            // "Resend code"
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: const Text(
                  'Resend code',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),

            // forward circular button
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                height: 50,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                shape: const CircleBorder(),
                color: const Color(0xFF46A5BA),
                onPressed: () {
                  // go to register 3
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Registration3()),
                  );
                },
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class CustomInputBox extends StatelessWidget {
  const CustomInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: (MediaQuery.of(context).size.width - 90) / 5,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
