import 'package:rush/rush.dart';

class UserTank extends RushTank {
  List<User>? users;
}

class CounterTank extends RushTank {
  int value = 0;
}

class IncrementFlow extends RushFlow<CounterTank> with RushChain<int> {
  @override
  dynamic execute() {
    return tank.value += 2;
  }

  @override
  dynamic fork(int result) {
    return DecrementFlow(result);
  }
}

class DecrementFlow extends RushFlow<CounterTank> {
  DecrementFlow(this.amount);

  final int amount;

  @override
  dynamic execute() {
    tank.value -= amount;
  }
}

class User {
  User({required this.name});

  final String name;
}

class FetchUsersFlow extends RushFlow<UserTank> {
  @override
  dynamic execute() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay.

    tank.users = [
      User(name: 'Alice'),
      User(name: 'Bob'),
      User(name: 'Charlie'),
    ];
  }
}
