import 'package:flutter_redux_architecture/redux/state/index.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final TodosState todosState;

  AppState({this.todosState});

  factory AppState.initial() {
    return AppState(
      todosState: TodosState.initial(),
    );
  }

  AppState copyWith({TodosState todosState}) {
    return AppState(todosState: todosState ?? this.todosState);
  }

  @override
  int get hashCode => todosState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState && todosState == other.todosState;

  @override
  String toString() {
    // return 'AppState: ${JsonEncoder.withIndent('  ').convert(this)}';

    return 'AppState: {todosState: $todosState}';
  }
}
