import 'package:example/models.dart';
import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rush'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddTodoAction(Todo(title: 'New Todo'));
          AddUserAction(User(name: 'New User'));
        },
        tooltip: 'Add Todo and User',
        child: const Icon(Icons.add),
      ),
      body: const Column()
          .rush
          .add(
            Expanded(
              child: RushWidget<TodoFuel>(
                actions: {
                  FetchTodosAction: () {
                    // Callback for FetchTodosAction
                  },
                  AddTodoAction: () {},
                },
                builder: (context, fuel, status) {
                  if (status is Loading) {
                    return const CircularProgressIndicator();
                  } else if (status is Error) {
                    return Text('Error: ${status.error}');
                  } else if (status is Success) {
                    return ListView(
                      children:
                          fuel.todos.map((todo) => Text(todo.title)).toList(),
                    );
                  } else {
                    return const Text('Idle');
                  }
                  // Build the UI for the Todo list
                },
              ),
            ),
          )
          .add(
            Expanded(
              child: RushWidget<UserFuel>(
                actions: {
                  FetchUsersAction: () {
                    // Callback for FetchTodosAction
                  },
                  AddUserAction: () {
                    // Callback for AddTodoAction
                  },
                },
                builder: (context, fuel, status) {
                  // Build the UI for the Todo list
                  if (status is Loading) {
                    return const CircularProgressIndicator();
                  } else if (status is Error) {
                    return Text('Error: ${status.error}');
                  } else if (status is Success) {
                    return ListView(
                      children:
                          fuel.users.map((user) => Text(user.name)).toList(),
                    );
                  } else {
                    return const Text('Idle');
                  }
                },
              ),
            ),
          )
          .add(const Text("Child 1").rush.xl6.red700.apply())
          .add(const Text("Child 2").rush.xl6.red700.apply())
          .add(const Text("Child 3").rush.xl6.red500.apply())
          .add(const Text("Child 4").rush.xl6.red500.apply())
          .add(const Text("Child 5").rush.xl6.red500.apply())
          .add(Container()
              .rush
              .height(100)
              .widthInPercentage(context, 80)
              .gradientFromAndTo(from: Rush.red500, to: Rush.green400)
              .padding(Rush.e16)
              .apply())
          .center
          .applyWithPadding(),
    );
  }
}
