String validator(value, label, min) {
  if (value.isEmpty) {
    return '$label is required*';
  }
  if (value == null) {
    return '$label is required*';
  }
  if (value.length < min) {
    return 'min $min character(s)*';
  }
  return null;
}

String numberValidator(value, label, min) {
  if (value.isEmpty) {
    return '$label is required*';
  }
  if (value == null) {
    return '$label is required*';
  }
  if (int.parse(value) < min) {
    return 'minimum is $min*';
  }
  return null;
}
