part of 'contact_watcher_bloc.dart';

@freezed
class ContactWatcherEvent with _$ContactWatcherEvent {
  const factory ContactWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ContactWatcherEvent.contactsReceived(
      Either<Unit, List<Contact>> failureOrRooms) = _ContactsReceived;
}