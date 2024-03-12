import 'package:flutter/material.dart';
import 'package:science_dex/screens/profile/configuration/configuration_model.dart';
import 'package:science_dex/screens/profile/widget/edit_user_widget.dart';
import 'package:science_dex/screens/profile/widget/list_period_widget.dart';
import 'package:provider/provider.dart';
import 'package:science_dex/screens/profile/widget/logout_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    ConfigurationModel configurationModel = Provider.of<ConfigurationModel>(context);
    return Scaffold(
        appBar: ScienceDexAppBar(textTitle: Translate.strings.configuration),
        backgroundColor: ScienceDexColors.scaffoldBackground,
        body: CustomScrollView(shrinkWrap: true, physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
              child: Consumer<ConfigurationModel>(
                  builder: (context, model, child) => EditUserWidget(
                      focusNode: model.focusNode,
                      controller: model.controller,
                      fileProfile: model.imageProfile,
                      onSubmitted: model.setName,
                      onTapPhoto: model.setImage,
                      padding: const EdgeInsets.only(top: 20, right: 20, left: 20)))),
          SliverToBoxAdapter(
              child: ScienceDexDividerWidget(padding: const EdgeInsets.only(top: 22, bottom: 18, left: 20, right: 20))),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), child: Text("Períodos").bodySmallSemiBold()),
          ),
          SliverToBoxAdapter(
              child: Consumer<ConfigurationModel>(
                  builder: (context, model, child) =>
                      ListPeriodWidget(margin: EdgeInsets.only(top: 18, left: 20, right: 20)))),
          SliverToBoxAdapter(
            child: ScienceDexPrimaryButton(
                padding: EdgeInsets.only(top: 12, right: 20),
                onTap: () => configurationModel.addPeriod(context),
                alignment: Alignment.centerRight,
                text: "Adicionar Período"),
          ),
          SliverToBoxAdapter(
              child: Consumer<ConfigurationModel>(
                  builder: (context, model, child) => LogoutWidget(
                        padding: EdgeInsets.only(left: 20, top: 66),
                        name: model.name,
                        imageProfile: model.imageProfile,
                      ))),
          SliverToBoxAdapter(child: SizedBox(height: 50))
        ]));
  }
}
