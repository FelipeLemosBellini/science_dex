import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/period/period_bloc.dart';
import 'package:science_dex/screens/structure/profile/period/period_state.dart';
import 'package:science_dex/screens/structure/profile/widget/set_data_period_widget.dart';
import 'package:science_dex/screens/structure/profile/widget/set_target_value_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class PeriodPage extends StatefulWidget {
  final PeriodEntity? periodEntity;

  const PeriodPage({super.key, required this.periodEntity});

  @override
  State<PeriodPage> createState() => _PeriodPageState();
}

class _PeriodPageState extends State<PeriodPage> {
  final PeriodBloc bloc = GetIt.I.get<PeriodBloc>();

  @override
  void initState() {
    super.initState();
    bloc.setPeriod(widget.periodEntity);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PeriodBloc, PeriodState>(
        bloc: bloc,
        builder: (context, state) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              Column(mainAxisSize: MainAxisSize.min, children: [
                Stack(alignment: Alignment.center, children: [
                  Align(alignment: Alignment.center, child: Text("Novo Período").bodyExtraSmallSemiBold()),
                  Align(
                      alignment: Alignment.centerRight,
                      child: ScienceDexGestureDetector(
                          onTap: () => bloc.pop(context),
                          child: Icon(Icons.close, color: ScienceDexColors.grayIcon, size: 24)))
                ]),
                SizedBox(height: 41),
                ScienceDexTextField(
                  controller: bloc.state.periodController,
                  focusNode: bloc.state.periodFocus,
                  labelText: "Nomeie seu período",
                ),
                SizedBox(height: 18),
                SetDataPeriodWidget(
                    categories: state.categories,
                    selectedCategory: state.selectedCategory,
                    startDate: state.startDate,
                    endDate: state.endDate,
                    openEndDate: () => bloc.openEndDate(context),
                    openStartDate: () => bloc.openStartDate(context),
                    onChangeCategory: bloc.setCategorySelected),
                SizedBox(height: 27),
                SetTargetValueWidget(
                    focusNode: state.targetOneFocus,
                    textController: state.targetOneController,
                    padding: EdgeInsets.symmetric(horizontal: 18)),
                SizedBox(height: 21),
                SetTargetValueWidget(
                    focusNode: state.targetTwoFocus,
                    textController: state.targetTwoController,
                    padding: EdgeInsets.symmetric(horizontal: 18)),
                SizedBox(height: 37),
                ScienceDexPillButton(onTap: bloc.addPeriod, text: "Concluir")
                // BottomButtonsWidget(deleteOnTap: bloc.deletePeriod, editOnTap: bloc.editPeriod),
              ])
            ])));
  }
}
