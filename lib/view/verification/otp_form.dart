import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();

    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width * 0.12,
                height: width * 0.14,
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FocusNode!);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width * 0.12,
                height: width * 0.14,
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode!);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width * 0.12,
                height: width * 0.14,
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode!);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width * 0.12,
                height: width * 0.14,
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin5FocusNode!);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width * 0.12,
                height: width * 0.14,
                child: TextFormField(
                  focusNode: pin5FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  onChanged: (value) {
                    pin5FocusNode!.unfocus();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
