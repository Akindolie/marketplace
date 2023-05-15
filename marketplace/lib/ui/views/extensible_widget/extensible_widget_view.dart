import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'extensible_widget_viewmodel.dart';

class ExtensibleWidgetView extends StackedView<ExtensibleWidgetViewModel> {
  const ExtensibleWidgetView(this.childWidget, {Key? key}) : super(key: key);

  final Widget childWidget;

  @override
  Widget builder(
    BuildContext context,
    ExtensibleWidgetViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.background,
      bottomSheet: Container(),
      body: Container(height: 300, child: childWidget),
    );
  }

  @override
  ExtensibleWidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ExtensibleWidgetViewModel();
}
