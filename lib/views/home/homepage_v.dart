import 'package:demo_ecom/views/home/widgets/home_appbar_w.dart';
import 'package:flutter/material.dart';

class HomepageV extends StatelessWidget {
  const HomepageV({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppbar(),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
