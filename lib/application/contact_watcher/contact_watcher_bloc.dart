import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/contact/contact.dart';
import '../../domain/contact/i_contact_repository.dart';

part 'contact_watcher_event.dart';
part 'contact_watcher_state.dart';
part 'contact_watcher_bloc.freezed.dart';

class ContactWatcherBloc
    extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  final IContactRepository contactRepository;
  StreamSubscription<Either<Unit, List<Contact>>>? _contactStreamSubscription;

  ContactWatcherBloc({required this.contactRepository})
      : super(const ContactWatcherState.initial()) {
    on<ContactWatcherEvent>((event, emit) async {
      await event.map(contactsReceived: (e) {
        e.failureOrRooms.fold(
          (f) => emit(
            const ContactWatcherState.loadFailure(),
          ),
          (rooms) => emit(
            ContactWatcherState.loadSuccess(
              rooms,
            ),
          ),
        );
      }, watchAllStarted: (e) async {
        emit(
          const ContactWatcherState.loadInProgress(),
        );
        _contactStreamSubscription?.cancel();
        _contactStreamSubscription = contactRepository.watchAll().listen(
          (failureOrRoom) {
            add(
              $ContactWatcherEvent.contactsReceived(failureOrRoom),
            );
          },
        );
      });
    });
  }
}
