import 'package:redux/redux.dart';
import 'package:flutter_redux_architecture/redux/index.dart';

final todosReducer = combineReducers<TodosState>([
  TypedReducer<TodosState, GetTodosSuccessfulAction>(_getTodosSuccess),
  TypedReducer<TodosState, GetTodosFailedAction>(_getTodosFailed),
  TypedReducer<TodosState, GetTodosLoadingAction>(_getTodosLoading),
  TypedReducer<TodosState, ClearGetTodosErrorAction>(_clearGetTodosError)
]);

TodosState _getTodosSuccess(TodosState state, GetTodosSuccessfulAction action) {
  return state.copyWith(
    todosLoading: false,
    todosError: false,
    todos: action.todos,
    todosMsg: null,
  );
}

TodosState _getTodosFailed(TodosState state, GetTodosFailedAction action) {
  return state.copyWith(
    todosLoading: false,
    todosError: true,
    todos: [],
    todosMsg: action.todosMsg,
  );
}

TodosState _getTodosLoading(TodosState state, GetTodosLoadingAction action) {
  return state.copyWith(
    todosLoading: true,
    todosError: false,
    todos: [],
    todosMsg: null,
  );
}

TodosState _clearGetTodosError(
    TodosState state, ClearGetTodosErrorAction action) {
  return state.copyWith(
    todosLoading: false,
    todosError: false,
    todos: [],
    todosMsg: null,
  );
}
