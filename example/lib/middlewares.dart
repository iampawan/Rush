import 'package:rush/rush.dart';

class LoggingMiddleware extends RushMiddleware {
  @override
  bool preFlow(RushFlow action) {
    print('Starting ${action.runtimeType}');
    return true;
  }

  @override
  void postFlow(RushFlow action) {
    print('Finished ${action.runtimeType} with status ${action.status}');
  }
}
