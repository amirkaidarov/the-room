import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/contacts/widgets/contacts_list_widget.dart';
import 'package:flutter_calling_app/presentation/contacts/widgets/header_widtget.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

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
            SizedBox(height: size.height*0.07),
            const Header(),
            const ContactsList(),
          ],
        ),
      ),
    );
  }
}
