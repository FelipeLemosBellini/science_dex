import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:science_dex/screens/structure/profile/configuration/configuration_bloc.dart';
import 'package:science_dex/screens/structure/profile/configuration/configuration_state.dart';
import 'package:science_dex/screens/structure/profile/widget/edit_user_widget.dart';
import 'package:science_dex/screens/structure/profile/widget/list_period_widget.dart';
import 'package:science_dex/screens/structure/profile/widget/logout_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  final ConfigurationBloc bloc = GetIt.instance.get<ConfigurationBloc>();

  // @override
  // void dispose() {
  //   bloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigurationBloc, ConfigurationState>(
        bloc: bloc,
        builder: (context, state) => Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: ScienceDexAppBar(textTitle: Translate.strings.configuration),
            backgroundColor: ScienceDexColors.scaffoldBackground,
            body: CustomScrollView(shrinkWrap: true, physics: BouncingScrollPhysics(), slivers: [
              SliverToBoxAdapter(
                  child: EditUserWidget(
                      focusNode: state.focusNode,
                      controller: state.controller,
                      fileProfile: state.imageProfile,
                      onSubmitted: bloc.setName,
                      onTapPhoto: bloc.setImage,
                      padding: const EdgeInsets.only(top: 20, right: 20, left: 20))),
              SliverToBoxAdapter(
                  child: ScienceDexDividerWidget(
                      padding: const EdgeInsets.only(top: 22, bottom: 18, left: 20, right: 20))),
              SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20), child: Text("Períodos").bodySmallSemiBold()),
              ),
              SliverToBoxAdapter(
                  child: ListPeriodWidget(
                margin: EdgeInsets.only(top: 18, left: 20, right: 20),
                list: state.periodList,
              )),
              SliverToBoxAdapter(
                child: ScienceDexPrimaryButton(
                    padding: EdgeInsets.only(top: 12, right: 20),
                    onTap: () => bloc.addPeriod(context),
                    alignment: Alignment.centerRight,
                    text: "Adicionar Período"),
              ),
              SliverToBoxAdapter(
                  child: LogoutWidget(
                padding: EdgeInsets.only(left: 20, top: 66),
                name: state.controller.text,
                imageProfile: state.imageProfile,
              )),
              SliverToBoxAdapter(child: SizedBox(height: 50))
            ])));
  }
}
