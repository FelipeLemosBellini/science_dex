import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/core/repository/profile/profile_repository.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/period/period_state.dart';

class PeriodBloc extends Cubit<PeriodState> {
  final ProfileRepository _profileRepository;
  PeriodBloc({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository,
        super(PeriodState.empty());

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

  void addPeriod() async {
    var response = await _profileRepository.createPeriod(
        newPeriod: PeriodEntity(
            category: "Categoria 1",
            endDate: DateTime.now(),
            startDate: DateTime.now(),
            targetOne: 123,
            targetTwo: 1234,
            periodName: "name"));
    response.fold((l) => print(l.error), (r) => r);
  }

  void openStartDate(BuildContext context) async {
    DateTime? date = await ScienceDexDateHelper.dataPicker(context);
    if (date != null) emit(state.copyWith(firstDate: date));
  }

  void openEndDate(BuildContext context) async {
    DateTime? date = await ScienceDexDateHelper.dataPicker(context);
    if (date != null) emit(state.copyWith(endDate: date));
  }

  void pop(BuildContext context) {
    context.pop();
  }
}
