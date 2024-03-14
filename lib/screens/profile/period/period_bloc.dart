import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/period/period_state.dart';

class PeriodBloc extends Cubit<PeriodState> {
  PeriodBloc() : super(PeriodState.empty());

  void setPeriod(PeriodEntity? periodEntity) {
    if (periodEntity != null) {
      emit(state.copyWith(periodEntity: periodEntity));
    }
  }

  void setCategorySelected(category) {
    state.selectedCategory = category;
    emit(state);
  }

  void deletePeriod() {}

  void editPeriod() {}

  void addPeriod() {

  }

  void openStartDate(BuildContext context) async {
    DateTime? date = await ScienceDexDateHelper.dataPicker(context);
    if (date != null) emit(state.copyWith(firstDate: date));
  }

  void openEndDate(BuildContext context) async {
    DateTime? date = await ScienceDexDateHelper.dataPicker(context);
    if (date != null) emit(state.copyWith(endDate: date));
  }
}
