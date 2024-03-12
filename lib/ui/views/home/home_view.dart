import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:fit_flick/ui/common/app_colors.dart';
import 'package:fit_flick/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fit Flick'),
        backgroundColor: kcPrimaryColor,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Home View',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
              verticalSpaceMedium,
              ElevatedButton(
                onPressed: viewModel.incrementCounter,
                child: Text(
                  viewModel.counterLabel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
