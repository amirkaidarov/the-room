part of 'contact_watcher_bloc.dart';

@freezed
class ContactWatcherState with _$ContactWatcherState {
  const factory ContactWatcherState.initial() = _Initial;
  const factory ContactWatcherState.loadInProgress() = _LoadInProgress;
  const factory ContactWatcherState.loadSuccess(List<Contact> contacts) =
      _LoadSuccess;
  const factory ContactWatcherState.loadFailure() = _LoadFailure;
}
