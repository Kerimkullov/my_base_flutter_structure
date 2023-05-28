part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
  }) = _MainState;
}

extension MainStateX on MainState {
  bool get isInitial => status == StateStatus.initial;
  bool get isLoading => status == StateStatus.loading;
  bool get isSuccess => status == StateStatus.success;
  bool get isFailure => status == StateStatus.failure;
}
