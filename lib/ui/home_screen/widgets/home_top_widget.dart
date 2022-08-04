import 'package:flutter/material.dart';

import '../../_shared/utils/text_styles.dart';
import '../../_shared/utils/user_data.dart';


class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.notes,
              size: 40.0,)),
        Text("Hello, ${UserData.name}", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black,fontSize: 20.0),),
        Container(
            height: 30.0,
            child: Image(image: AssetImage("assets/images/ic-notification.png"), ))
      ],
    );
  }
}