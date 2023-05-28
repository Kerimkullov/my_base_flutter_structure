import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_beeline/core/repositories/sample_repository/sample_repository.dart';
import 'package:my_beeline/core/utils/enums/helper_enums.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

// This is example of using bloc with repo calling api

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(this._sampleRepository) : super(const MainState()) {
    on<_Started>(_onStarted);
  }

  final SampleRepository _sampleRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<MainState> emit,
  ) async {
    try {
      emit(state.copyWith(status: StateStatus.loading));

      await _sampleRepository.sampleApi(body: {});

      emit(state.copyWith(status: StateStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: StateStatus.failure,
        ),
      );
    }
  }
}
