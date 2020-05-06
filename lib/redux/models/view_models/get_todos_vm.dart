import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:redux/redux.dart';

class GetTodosVM {
  final bool todosLoading;
  final bool todosError;
  final List<TodosModel> todos;
  final todosMsg;
  final Function getAllTodos;

  GetTodosVM(
      {this.todosLoading,
      this.todosError,
      this.todos,
      this.todosMsg,
      this.getAllTodos});

  static GetTodosVM fromStore(Store<AppState> store) {
    return GetTodosVM(
      todosLoading: store.state.todosState.todosLoading,
      todosError: store.state.todosState.todosError,
      todos: store.state.todosState.todos,
      todosMsg: store.state.todosState.todosMsg,
      getAllTodos: () {
        store.dispatch(getTodos());
      },
    );
  }
}
