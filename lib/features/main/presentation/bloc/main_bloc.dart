import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(_Initial()) {
    on<MainEvent>(_onMainEventChangeMenu);
  }
  void _onMainEventChangeMenu(MainEvent event, Emitter<MainState> emit) {
    emit(state.copyWith(menu: event.menu));
  }
}
