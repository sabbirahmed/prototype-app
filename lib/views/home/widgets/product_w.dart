import 'package:demo_ecom/models/dummy_product_list_m.dart';
import 'package:demo_ecom/resources/color/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 2.5,
              height: 200,
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
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const Gap(4),
          Text(
            "Ostrich with Gold",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.black.withOpacity(.7),
                ),
          ),
          const Gap(4),
          Text(
            "Brand New (N)",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.black.withOpacity(.7),
                ),
          ),
          const Gap(4),
          Text(
            "JPY 9,680,000",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
