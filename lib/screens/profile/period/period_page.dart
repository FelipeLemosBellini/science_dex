import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:science_dex/routes/route_generate.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/period/period_bloc.dart';
import 'package:science_dex/screens/profile/period/period_view_model.dart';
import 'package:science_dex/screens/profile/widget/bottom_buttons_widget.dart';
import 'package:science_dex/screens/profile/widget/set_data_period_widget.dart';
import 'package:science_dex/screens/profile/widget/set_target_value_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class PeriodPage extends StatefulWidget {
  const PeriodPage({super.key});

  @override
  State<PeriodPage> createState() => _PeriodPageState();
}

class _PeriodPageState extends State<PeriodPage> {
  final PeriodBloc bloc = GetIt.I.get<PeriodBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(alignment: Alignment.center, children: [
              Align(alignment: Alignment.center, child: Text("Novo Período").bodyExtraSmallSemiBold()),
              Align(
                  alignment: Alignment.centerRight,
                  child: ScienceDexGestureDetector(
                      onTap: () {}, child: Icon(Icons.close, color: ScienceDexColors.grayIcon, size: 24)))
            ]),
            SizedBox(height: 41),
            ScienceDexTextField(
              controller: bloc.state.periodController,
              focusNode: bloc.state.periodFocus,
              labelText: "Nomeie seu período",
            ),
            SizedBox(height: 18),
            BlocBuilder<PeriodBloc, PeriodViewModel>(
              bloc: bloc,
              builder: (context, state) => SetDataPeriodWidget(
                categories: state.categories,
                selectedCategory: state.selectedCategory,
                onChangeCategory: bloc.setCategorySelected,
              ),
            ),
            SizedBox(height: 27),
            SetTargetValueWidget(padding: EdgeInsets.symmetric(horizontal: 18)),
            SizedBox(height: 21),
            SetTargetValueWidget(padding: EdgeInsets.symmetric(horizontal: 18)),
            SizedBox(height: 37),
            BottomButtonsWidget(deleteOnTap: bloc.deletePeriod, editOnTap: bloc.editPeriod),
          ],
        ));
  }
}
