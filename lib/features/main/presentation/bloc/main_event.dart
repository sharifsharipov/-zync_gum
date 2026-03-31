part of 'main_bloc.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.changeMenu(MainMenu menu) = _ChangeMenu;
}
