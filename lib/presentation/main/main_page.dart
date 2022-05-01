import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/advices/advices_page.dart';

import '../contacts/contacts_page.dart';
import '../home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const routeName = '/main-page';

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 1 );
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: const [
          AdvicesPage(),
          HomePage(),
          ContactsPage(),
        ],
      ),
    );
  }
}
