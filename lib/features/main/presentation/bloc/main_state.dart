part of 'main_bloc.dart';

enum MainMenu { home, profile }

@freezed
abstract class MainState with _$MainState {
  const factory MainState.initial({@Default(MainMenu.home) MainMenu menu}) =
      _Initial;
}
