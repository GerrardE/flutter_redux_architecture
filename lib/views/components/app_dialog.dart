import 'package:flutter_redux_architecture/redux/index.dart';
import 'package:flutter_redux_architecture/views/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class AppDialog extends StatefulWidget {
  final String message;
  final dynamic action;

  AppDialog({@required this.message, @required this.action});

  @override
  _AppDialogState createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  void handlePressed() {
    final store = StoreProvider.of<AppState>(context);
    store.dispatch(widget.action);
    Keys.navKey.currentState.pop();
  }

  Widget buildContent(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.error,
                size: 48,
                color: Colors.redAccent,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  widget.message,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: MaterialButton(
                  minWidth: 150,
                  color: Colors.red,
                  splashColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    handlePressed();
                  },
                  child: Text('Close'),
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return buildContent(context);
  }
}
