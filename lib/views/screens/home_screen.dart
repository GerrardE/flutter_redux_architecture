import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:flutter_redux_architecture/views/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildTodoItem(data) {
    List<TodosModel> todos = data;

    List<Widget> children = todos.map((todo) {
      return Padding(
          padding: EdgeInsets.only(top: 1, right: 0, bottom: 1, left: 0),
          child: Card(
            child: ListTile(
              title: Text(todo.title),
              subtitle: todo.completed
                  ? Text('COMPLETED',
                      style: TextStyle(
                        fontSize: 12,
                        color: todo.completed ? Colors.green : Colors.red,
                      ))
                  : Text('UNCOMPLETED',
                      style: TextStyle(
                        fontSize: 12,
                        color: todo.completed ? Colors.green : Colors.red,
                      )),
              trailing: Icon(Icons.more_vert),
            ),
          ));
    }).toList();

    return Column(children: children);
  }

  buildContent(GetTodosVM getTodosVM) {
    return getTodosVM.todosLoading
        ? Padding(
            padding: const EdgeInsets.all(100.0),
            child: Center(child: CircularProgressIndicator()),
          )
        : Column(children: [
            SizedBox(
              height: 10,
            ),
            Text('TODOS',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)),
            SizedBox(
              height: 10,
            ),
            Container(
              child: buildTodoItem(getTodosVM.todos),
            )
          ]);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      top: 4,
      appBar: AppBar(
        title: Text('Redux App'),
      ),
      child: SingleChildScrollView(
          child: StoreConnector<AppState, GetTodosVM>(
              onInit: (store) => store.dispatch(getTodos()),
              converter: (store) => GetTodosVM.fromStore(store),
              builder: (_, getTodosVM) => buildContent(getTodosVM))),
    );
  }
}
