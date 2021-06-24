import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tester_app/localization/l10n.dart' show AppLocalizations;

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest() = UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              networkExceptions = NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                case 401:
                case 403:
                  networkExceptions = NetworkExceptions.unauthorizedRequest();
                  break;
                case 404:
                  networkExceptions = NetworkExceptions.notFound(AppLocalizations.current.notFound);
                  break;
                case 409:
                  networkExceptions = NetworkExceptions.conflict();
                  break;
                case 408:
                  networkExceptions = NetworkExceptions.requestTimeout();
                  break;
                case 500:
                  networkExceptions = NetworkExceptions.internalServerError();
                  break;
                case 503:
                  networkExceptions = NetworkExceptions.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response!.statusCode;
                  networkExceptions = NetworkExceptions.defaultError(
                    AppLocalizations.current.receivedInvalidStatusCode(responseCode!),
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        // Helper.printError(e.toString());
        return NetworkExceptions.formatException();
      } catch (_) {
        return NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return NetworkExceptions.unableToProcess();
      } else {
        return NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = AppLocalizations.current.notImplemented;
    }, requestCancelled: () {
      errorMessage = AppLocalizations.current.requestCancelled;
    }, internalServerError: () {
      errorMessage = AppLocalizations.current.internalServerError;
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = AppLocalizations.current.serviceUnavailable;
    }, methodNotAllowed: () {
      errorMessage = AppLocalizations.current.methodAllowed;
    }, badRequest: () {
      errorMessage = AppLocalizations.current.badRequest;
    }, unauthorizedRequest: () {
      errorMessage = AppLocalizations.current.unauthorizedRequest;
    }, unexpectedError: () {
      errorMessage = AppLocalizations.current.unexpectedErrorOccurred;
    }, requestTimeout: () {
      errorMessage = AppLocalizations.current.connectionRequestTimeout;
    }, noInternetConnection: () {
      errorMessage = AppLocalizations.current.noInternetConnection;
    }, conflict: () {
      errorMessage = AppLocalizations.current.errorDueToAConflict;
    }, sendTimeout: () {
      errorMessage = AppLocalizations.current.sendTimeoutInConnectionWithApiServer;
    }, unableToProcess: () {
      errorMessage = AppLocalizations.current.unableToProcessTheData;
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = AppLocalizations.current.unexpectedErrorOccurred;
    }, notAcceptable: () {
      errorMessage = AppLocalizations.current.notAcceptable;
    });
    return errorMessage;
  }
}
