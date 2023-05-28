import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_bar_state.dart';
part 'bottom_bar_cubit.freezed.dart';

@injectable
class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarState());

  void changeTab(int index) => emit(state.copyWith(index: index));
}
