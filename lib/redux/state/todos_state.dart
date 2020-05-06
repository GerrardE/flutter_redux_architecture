import 'package:flutter_redux_architecture/redux/models/index.dart';
import 'package:meta/meta.dart';

@immutable
class TodosState {
  final bool todosLoading;
  final bool todosError;
  final todosMsg;
  final List<TodosModel> todos;

  TodosState({this.todosLoading, this.todosError, this.todosMsg, this.todos});

  factory TodosState.initial() {
    return TodosState(
        todosLoading: false, todosError: false, todosMsg: null, todos: []);
  }

  TodosState copyWith(
      {bool todosLoading, bool todosError, todosMsg, List<TodosModel> todos}) {
    return TodosState(
      todosLoading: todosLoading ?? this.todosLoading,
      todosError: todosError ?? this.todosError,
      todosMsg: todosMsg ?? this.todosMsg,
      todos: todos ?? this.todos,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodosState &&
          runtimeType == other.runtimeType &&
          todosLoading == other.todosLoading &&
          todosError == other.todosError &&
          todosMsg == other.todosMsg &&
          todos == other.todos;

  @override
  int get hashCode => todosLoading.hashCode ^ todos.hashCode;

  @override
  String toString() {
    return 'TodosState: {todosLoading: $todosLoading, todosError: $todosError, todosMsg: $todosMsg, todos: $todos}';
  }
}
