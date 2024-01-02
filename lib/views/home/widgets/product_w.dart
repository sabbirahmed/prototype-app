import 'package:demo_ecom/models/dummy_product_list_m.dart';
import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../resources/text_styles/text_styles.dart';
import '../../global_views/common_network_image_widget.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.dummyProductListModel});

  DummyProductListModel dummyProductListModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: CommonNetworkImageWidget(
                imageLink: dummyProductListModel.imageLink.toString(),
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(10),
          Text(
            dummyProductListModel.productName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyMedium14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(4),
          Text(
            "Ostrich with Gold",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyRegular12.copyWith(
              color: AppColors.black,
            ),
          ),
          const Gap(4),
          Text(
            "Brand New (N)",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyRegular12.copyWith(
              color: AppColors.black,
            ),
          ),
          const Gap(4),
          Text(
            "JPY 9,680,000",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyMedium14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
