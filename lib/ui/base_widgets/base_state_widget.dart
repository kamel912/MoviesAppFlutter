import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/network_exceptions/network_exceptions.dart';
import 'package:tester_app/models/result_state/result_state.dart';
import 'package:tester_app/ui/base_widgets/error.dart';
import 'package:tester_app/ui/base_widgets/loading.dart';

class ResultStateBuilder<DataProvider extends ResultStateNotifier, ResultData> extends StatelessWidget {
  final ValueWidgetBuilder<ApiResponse<ResultData>> builder;
  final Widget? child;

  const ResultStateBuilder({
    required this.builder,
    this.child,
  });

  @override
  Widget build(BuildContext context) => StateNotifierBuilder<ResultState<ApiResponse<ResultData>>>(
        stateNotifier: context.read<DataProvider>() as ResultStateNotifier<ResultData>,
        builder: (context, state, child) => state.when(
          idle: () => Container(),
          loading: () => LoadingWidget(),
          data: (data) => builder(context, data, child),
          error: (error) => AppErrorWidget(error: NetworkExceptions.getErrorMessage(error)),
        ),
      );
}
