import 'package:demo_ecom/resources/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class NoInternetW extends StatelessWidget {
  const NoInternetW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                'Please check your internet connection!',
                style: bodyMedium16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
