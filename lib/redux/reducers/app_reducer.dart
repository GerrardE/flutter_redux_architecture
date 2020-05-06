import 'package:flutter_redux_architecture/redux/index.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      todosState: todosReducer(state.todosState, action));
}
