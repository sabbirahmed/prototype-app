import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../resources/text_styles/text_styles.dart';
import '../../global_views/common_network_image_widget.dart';

class HomeAdvertisement extends StatelessWidget {
  const HomeAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
              child: CommonNetworkImageWidget(
                imageLink: "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                boxFit: BoxFit.cover,
              ),
              // CommonNetworkImageWidget(imageLink: item),
            ),
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Price Down",
                      style: titleMedium20,
                    ),

                    Text("Dream Bag for a Dream\nPrice",
                      style: bodyRegular16.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),

                Container(
                  color: AppColors.black,
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                  child: Text(
                    "SHOP NOW",
                    style: bodyMedium16.copyWith(color: Colors.amberAccent),

                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
