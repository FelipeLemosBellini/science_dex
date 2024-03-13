import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:science_dex/screens/profile/period/period_view_model.dart';

class PeriodBloc extends Cubit<PeriodViewModel> {
  PeriodBloc() : super(PeriodViewModel());

  void setCategorySelected(category) {
    state.selectedCategory = category;
    emit(state);
  }

  void deletePeriod() {}

  void editPeriod() {}
}
