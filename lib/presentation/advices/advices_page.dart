import 'package:flutter/material.dart';

import 'widgets/advices_body_widget.dart';
import 'widgets/header_widget.dart';

class AdvicesPage extends StatelessWidget {
  const AdvicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.07),
            const Header(),
            const AdvicesBody(),
          ],
        ),
      ),
    );
  }
}
