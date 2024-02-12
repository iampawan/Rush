// import 'package:flutter_test/flutter_test.dart';
// import 'package:rush/rush.dart';

// void main() {
//   RushEngine.withFuel(MyFuel());
//   group('RushFlow', () {
//     test('status is initially idle', () {
//       final flow = FetchUsersFlow();
//       expect(flow.status, equals(RushStatus.idle));
//     });

//     test('status is loading after execute is called', () async {
//       final flow = FetchUsersFlow();
//       await flow.execute();
//       expect(flow.status, equals(RushStatus.loading));
//     });

//     test('status is success after execute completes', () async {
//       final flow = FetchUsersFlow();
//       await flow.execute();
//       await Future.delayed(
//         const Duration(seconds: 2),
//       ); // Wait for execute to complete.
//       expect(flow.status, equals(RushStatus.success));
//     });

//     test('status is error when execute throws an exception', () async {
//       final flow = FetchUsersFlow();
//       flow.execute = () => throw Exception('Test exception');
//       await flow._run();
//       expect(flow.status, equals(RushStatus.error));
//     });
//   });

//   group('RushEngine', () {
//     test('fuel is initially null', () {
//       expect(RushEngine.fuel, isNull);
//     });

//     test('fuel is updated after a flow is executed', () async {
//       final flow = FetchUsersFlow();
//       await flow.execute();
//       await Future.delayed(
//         const Duration(seconds: 2),
//       ); // Wait for execute to complete.
//       expect(RushEngine.fuel, isNotNull);
//       expect(RushEngine.fuel, isA<MyFuel>());
//       expect((RushEngine.fuel as MyFuel).users, isNotEmpty);
//     });

//     test('listeners are notified when a flow is executed', () async {
//       final flow = FetchUsersFlow();
//       var wasNotified = false;
//       RushEngine.addListener((_) => wasNotified = true);
//       await flow.execute();
//       await Future.delayed(
//         const Duration(seconds: 2),
//       ); // Wait for execute to complete.
//       expect(wasNotified, isTrue);
//     });
//   });
// }

// class MyFuel extends RushFuel {
//   int value = 0;
//   List<User>? users;
// }

// class User {
//   User({required this.name});

//   final String name;
// }

// class FetchUsersFlow extends RushFlow<MyFuel> {
//   @override
//   dynamic execute() async {
//     await Future.delayed(const Duration(seconds: 2)); // Simulate network delay.

//     fuel!.users = [
//       User(name: 'Alice'),
//       User(name: 'Bob'),
//       User(name: 'Charlie'),
//     ];
//   }
// }
