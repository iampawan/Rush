import 'package:rush/rush.dart';

class UserTank extends RushTank {
  List<User>? users;
  final counterTank = CounterTank();
}

class CounterTank {
  int value = 0;
}

class IncrementFlow extends RushFlow<UserTank> with RushChain<int> {
  @override
  dynamic execute() {
    return tank.counterTank.value += 2;
  }

  @override
  dynamic fork(int result) {
    return DecrementFlow(result);
  }
}

class DecrementFlow extends RushFlow<UserTank> {
  DecrementFlow(this.amount);

  final int amount;

  @override
  Future<void> execute() async {
    // tank.value -= amount;
    if (tank.counterTank.value >= 0) {
      await Future.delayed(2.toSeconds);
      tank.counterTank.value -= amount;
    } else {
      throw Exception('Value cannot be negative.');
    }
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
