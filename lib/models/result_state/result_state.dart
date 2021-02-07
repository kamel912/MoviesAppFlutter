import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/api_result/api_result.dart';
import 'package:tester_app/models/network_exceptions/network_exceptions.dart';

part 'result_state.freezed.dart';

@freezed
abstract class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({@required T data}) = Data<T>;

  const factory ResultState.error({@required NetworkExceptions error}) = Error<T>;
}

abstract class ResultStateNotifier<T> extends StateNotifier<ResultState<ApiResponse<T>>> with LocatorMixin {
  ResultStateNotifier() : super(Idle());

  set currentMainPath(MainPath mainPath) {
    read<MainPathProvider>().state = mainPath;
    typePathByIndex = 0;
  }

  set mainPathByIndex(int index) {
    currentMainPath = read<MainPathProvider>().mainPathList[index];
  }

  set currentTypePath(TypePath typePath) {
    read<TypePathProvider>().state = typePath;
    onTypePathChanged();
  }

  set typePathByIndex(int index) {
    currentTypePath = read<TypePathListProvider>().current[index];
  }

  get current => state;

  loadData(Future<ApiResult<ApiResponse<T>>> apiCall) async {
    state = ResultState.loading();
    ApiResult<ApiResponse<T>> apiResult = await apiCall;
    state = apiResult.when(
      success: (data) => ResultState.data(data: data),
      failure: (error) => ResultState.error(error: error),
    );
  }

  onTypePathChanged() {}
}
