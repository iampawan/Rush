import 'package:rush/rush.dart';

class LoggingMiddleware extends RushMiddleware {
  @override
  bool preFlow(RushFlow action) {
    Rush.log('Starting ${action.runtimeType}');
    return true;
  }

  @override
  void postFlow(RushFlow action) {
    Rush.log('Finished ${action.runtimeType} with status ${action.status}');
  }
}
