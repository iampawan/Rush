// middlewares.dart

import 'package:rush/rush.dart';
import 'package:rush/rush.dart';

class LoggingMiddleware implements RushMiddleware {
  @override
  void call(RushAction action) {
    print('Dispatching ${action.runtimeType}');
  }
}

class ErrorHandlingMiddleware implements RushMiddleware {
  @override
  void call(RushAction action) {
    if (action.status is Error) {
      print('Error: ${(action.status as Error).error}');
    }
  }
}
