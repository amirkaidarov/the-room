import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/contact_watcher/contact_watcher_bloc.dart';
import 'contact_item_widget.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactWatcherBloc, ContactWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          loadInProgress: (s) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (s) => ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (ctx, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContactItem(
                contact: s.contacts[index],
              ),
            ),
            itemCount: s.contacts.length,
          ),
        );
      },
    );
  }
}
