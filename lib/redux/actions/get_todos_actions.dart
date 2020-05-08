import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:flutter_redux_architecture/utils/index.dart';
import 'package:redux/redux.dart';
import 'dart:async';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:meta/meta.dart';

class GetTodosLoadingAction {
  GetTodosLoadingAction();
}

class GetTodosSuccessfulAction {
  final List<TodosModel> todos;

  GetTodosSuccessfulAction({@required this.todos});

  @override
  String toString() {
    return 'Todos{Todos: $todos}';
  }
}

class GetTodosFailedAction {
  var todosMsg;

  GetTodosFailedAction(this.todosMsg);

  @override
  String toString() {
    return 'Todos{There was an error: $todosMsg}';
  }
}

class ClearGetTodosErrorAction {
  ClearGetTodosErrorAction();
}

ThunkAction getTodos() {
  ApiService _apiService = ApiService();

  return (Store store) async {
    Future(() async {
      store.dispatch(GetTodosLoadingAction());

      try {
        // Delay the request just to show the progress indicator
        Future.delayed(Duration(seconds: 5));
        final response =
            await _apiService.get("$apiBaseUrl/todos/", apiHeaders);

        final responseJson = todosModelFromJson(response);

        store.dispatch(new GetTodosSuccessfulAction(todos: responseJson));
      } catch (error) {
        store.dispatch(GetTodosFailedAction(error));
      }
    });
  };
}
