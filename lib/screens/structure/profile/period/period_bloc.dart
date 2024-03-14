import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/core/repository/profile/profile_repository.dart';
import 'package:science_dex/core/service/event/science_dex_event_listener.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/period/period_state.dart';
import 'package:science_dex/core/service/event/science_dex_event_type.dart';

class PeriodBloc extends Cubit<PeriodState> {
  final ProfileRepository _profileRepository;
  final ScienceDexEventListener _eventListener;

  PeriodBloc({
    required ProfileRepository profileRepository,
    required ScienceDexEventListener eventListener,
  })  : _profileRepository = profileRepository,
        _eventListener = eventListener,
        super(PeriodState());

  void setPeriod(PeriodEntity? periodEntity) {
    if (periodEntity != null) {
      emit(state.copyWith(
        editionMode: true,
          firstDate: periodEntity.startDate,
          endDate: periodEntity.endDate,
          selectedCategory: periodEntity.category,
          periodController: TextEditingController(text: periodEntity.periodName),
          targetOneController: TextEditingController(text: periodEntity.targetOne.toString()),
          targetTwoController: TextEditingController(text: periodEntity.targetTwo.toString())));
    }
  }

  void setCategorySelected(category) {
    emit(state.copyWith(selectedCategory: category));
  }

  void deletePeriod() {}

  void editPeriod() {}

  void addPeriod(BuildContext context) async {
    if (_validationCreatePeriod()) {
      var response = await _profileRepository.createPeriod(
          newPeriod: PeriodEntity(
              category: state.selectedCategory,
              endDate: state.endDate!,
              startDate: state.startDate!,
              targetOne: int.parse(state.targetOneController.text),
              targetTwo: int.parse(state.targetTwoController.text),
              periodName: state.periodController.text));
      response.fold((l) => print(l.error), (_) => _successCreateNewPeriod(context));
    }
  }

  bool _validationCreatePeriod() {
    bool hasPeriodName = state.periodController.text.isNotEmpty;
    bool hasEndDate = state.endDate != null;
    bool hasStartDate = state.endDate != null;
    bool hasTargetOne = state.targetOneController.text.isNotEmpty;
    bool hasTargetTwo = state.targetTwoController.text.isNotEmpty;
    bool categoryWasSelected = state.selectedCategory.isNotEmpty;
    return (categoryWasSelected && hasPeriodName && hasEndDate && hasTargetTwo && hasTargetOne && hasStartDate);
  }

  void _successCreateNewPeriod(BuildContext context) {
    _eventListener.fire(eventType: ScienceDexEventType.reloadListPeriod);
    context.pop();
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
