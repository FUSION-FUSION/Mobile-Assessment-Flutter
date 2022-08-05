import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/app_textfield.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 8, right: 8),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: AppBar().preferredSize.height,
                width: AppBar().preferredSize.height,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        shape: BoxShape.circle
                      ),
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32.0),
                          child: const Icon(Icons.arrow_back)
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: const AppTextField(
                        hasLabel: false,
                        hintText: "HH-INT-D9FD00-JBW-ORI",
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ],
    );
  }
}
