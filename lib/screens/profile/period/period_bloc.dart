import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:science_dex/screens/profile/period/period_state.dart';

class PeriodBloc extends Cubit<PeriodState> {
  PeriodBloc() : super(PeriodState());

  void setCategorySelected(category) {
    state.selectedCategory = category;
    emit(state);
  }

  void deletePeriod() {}

  void editPeriod() {}
}
