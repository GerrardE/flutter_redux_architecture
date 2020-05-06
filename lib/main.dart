import 'package:flutter_redux_architecture/views/index.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() => runApp(ReduxApp());

class ReduxApp extends StatefulWidget {
  @override
  _ReduxAppState createState() => _ReduxAppState();
}

class _ReduxAppState extends State<ReduxApp> {
  final store = Store<AppState>(appReducer,
      initialState: AppState.initial(), middleware: [thunkMiddleware]);
  bool mobileNumber = false;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.white,
          ),
          onGenerateRoute: Router.generateRoute,
          home: HomeScreen(),
          navigatorKey: Keys.navKey,
        ));
  }
}
