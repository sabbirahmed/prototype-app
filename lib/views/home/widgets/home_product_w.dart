import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../resources/text_styles/text_styles.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text("JUST IN", style: titleRegular22,),
          Gap(2.h),
          Container(
            height: 2.h,
            width: 50.w,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
