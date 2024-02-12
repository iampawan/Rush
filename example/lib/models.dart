// models.dart

import 'package:rush/rush.dart';

class Todo {
  final String title;

  Todo({required this.title});
}

class User {
  final String name;

  User({required this.name});
}

// fuels.dart

class TodoFuel extends RushFuel {
  List<Todo> todos = [];

  void setTodos(List<Todo> todos) {
    this.todos = todos;
  }

  void addTodo(Todo todo) {
    todos.add(todo);
  }
}

class UserFuel extends RushFuel {
  List<User> users = [];

  void setUsers(List<User> users) {
    this.users = users;
  }

  void addUser(User user) {
    users.add(user);
  }
}

// actions.dart

class FetchTodosAction extends RushAction<TodoFuel> {
  @override
  Future<void> execute(TodoFuel fuel) async {
    try {
      var todos =
          await fetchTodosFromServer(); // Replace with your async function
      fuel.setTodos(todos);
    } catch (e) {
      onException(e, StackTrace.current);
    }
  }

  fetchTodosFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    return [Todo(title: "1"), Todo(title: "2")];
  }
}

class AddTodoAction extends RushAction<TodoFuel> {
  final Todo todo;

  AddTodoAction(this.todo);

  @override
  Future<void> execute(TodoFuel fuel) async {
    fuel.addTodo(todo);
  }
}

class FetchUsersAction extends RushAction<UserFuel> {
  @override
  Future<void> execute(UserFuel fuel) async {
    try {
      var users =
          await fetchUsersFromServer(); // Replace with your async function
      fuel.setUsers(users);
    } catch (e) {
      onException(e, StackTrace.current);
    }
  }

  fetchUsersFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    return [User(name: "Pawan")];
  }
}

class AddUserAction extends RushAction<UserFuel> {
  final User user;

  AddUserAction(this.user);

  @override
  Future<void> execute(UserFuel fuel) async {
    fuel.addUser(user);
  }
}
