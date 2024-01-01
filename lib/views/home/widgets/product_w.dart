import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:demo_ecom/views/home/data/dummy_product_list_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../resources/text_styles/text_styles.dart';
import '../../global_views/common_network_image_widget.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.dummyProductListModel});

  DummyProductListModel dummyProductListModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Container(
              width: MediaQuery.sizeOf(context).width / 2.5,
              height: 200,
              child: CommonNetworkImageWidget(
                imageLink: dummyProductListModel.imageLink.toString(),
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          Gap(10),
          Container(
            width: MediaQuery.sizeOf(context).width / 2.5,
            child: Text(
              "${dummyProductListModel.productName}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: bodyMedium14.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "Ostrich with Gold",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyRegular12.copyWith(color: AppColors.grey)
          ),
          Text(
              "Brand New (N)",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: bodyRegular12.copyWith(color: AppColors.grey)
          ),
          Text(
              "JPY 9,680,000",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: bodyMedium14.copyWith(fontWeight: FontWeight.w500)
          ),
        ],
      ),
    );
  }
}
