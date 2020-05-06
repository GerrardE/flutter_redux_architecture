import 'package:flutter_redux_architecture/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class AppInputField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Widget icon;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final double width;
  final String errorText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String message;
  final double height;
  final List<TextInputFormatter> inputFormatters;
  final String initialValue;
  final int maxLength;
  final FocusNode focusNode;

  AppInputField(
      {Key key,
      this.controller,
      this.label,
      this.icon,
      this.onSaved,
      this.onChanged,
      this.validator,
      this.width,
      this.errorText,
      this.keyboardType,
      @required this.obscureText,
      this.message,
      this.height,
      this.inputFormatters,
      this.initialValue,
      this.maxLength,
      this.focusNode})
      : super(key: key);

  @override
  AppInputFieldState createState() {
    return AppInputFieldState();
  }
}

class AppInputFieldState extends State<AppInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      controller: widget.controller,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      maxLength: widget.maxLength,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
          icon: widget.icon,
          errorText: widget.errorText,
          labelStyle: TextStyle(color: Theme.of(context).primaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue[100])),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: HexColor('#a29ece'), width: 2.0),
          )
          ),
    );
  }
}

class AppDateField extends StatefulWidget {
  final TextEditingController controller;
  final Widget icon;
  final String label;
  final Function validator;
  final Function onSaved;
  final Function onChanged;
  final format = DateFormat("yyyy-MM-dd");
  final DateTime firstDate;

  AppDateField({Key key, this.controller, this.icon, this.label, this.validator, this.onSaved, this.onChanged, this.firstDate})
      : super(key: key);

  @override
  _AppDateFieldState createState() => _AppDateFieldState();
}

class _AppDateFieldState extends State<AppDateField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
          child: DateTimeField(
        controller: widget.controller,
        format: widget.format,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        validator: widget.validator,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: widget.firstDate ?? DateTime(1900),
              initialDate: widget.firstDate ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
        decoration: InputDecoration(
            icon: widget.icon,
            labelText: widget.label,
            labelStyle: TextStyle(color: Theme.of(context).primaryColor),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[100])
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: HexColor('#a29ece'), width: 2.0),
            )
            ),
      ),
    );
  }
}
