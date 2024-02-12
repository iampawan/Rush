import 'package:rush/rush.dart';

class UserTank extends RushTank {
  int value = 0;
  List<User>? users;
}

class IncrementFlow extends RushFlow<UserTank> with RushChain<int> {
  @override
  dynamic execute() {
    return fuel!.value += 2;
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
  dynamic execute() {
    fuel!.value -= amount;
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

    fuel!.users = [
      User(name: 'Alice'),
      User(name: 'Bob'),
      User(name: 'Charlie'),
    ];
  }
}
