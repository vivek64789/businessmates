isEmpty(value, {bool short = false, Function? onNull}) {
  if (value == null || value.isEmpty) {
    if (short) {
      return "Required";
    }
    return 'The field is required.';
  }
  if (onNull != null) {
    onNull();
  }
  return null;
}

isEmptyForDrop(value, match, {bool short = false}) {
  if (value == null || value == match || value.isEmpty) {
    if (short) {
      return 'Required';
    } else {
      return 'The field is required.';
    }
  }
}

checkPassword(value) {
  if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(value)) {
    return 'Invalid Password. Password must contain atleast one upper case, one lower case, one digit and one special characters';
  }
  return null;
}

maxLength(value, int maxlength, {bool short = false}) {
  if (value.length > maxlength) {
    if (short) {
      return "> $maxLength char";
    } else {
      return 'The field value should not be longer than $maxlength characters.';
    }
  }
  return null;
}

minLength(value, int minLength, {bool short = false}) {
  if (value.length < minLength) {
    if (short) {
      return "> $minLength char";
    } else {
      return 'The field value should not be longer than $minLength characters.';
    }
  }

  return null;
}

confirmPassword(value, value2, {bool short = false}) {
  if (value != value2) {
    return 'New password and Confirm Password are not same';
  }

  return null;
}

maxValue(String value, maxValue, {bool short = false}) {
  if (int.parse(value) > maxValue) {
    {
      if (short) {
        return "<$maxValue";
      } else {
        return 'The field value should not be greater than $maxValue';
      }
    }
  }
  return null;
}

minValue(String value, minValue, {bool short = false}) {
  if (int.parse(value) > minValue) {
    if (short) {
      return ">$minValue";
    } else {
      return 'The field value should not be greater than $minValue';
    }
  }
  return null;
}

textwithSpace(String value, {bool short = false, Function? onNull}) {
  if (!RegExp(r'^[a-zA-Z_ ]+$').hasMatch(value)) {
    if (short) {
      return "invalid";
    } else {
      return "invalid characters";
    }
  }
  if (onNull != null) {
    onNull();
  }
  return null;
}

onlyNumber(String value, {bool short = false}) {
  if (!RegExp(r'^[1-9]+$').hasMatch(value)) {
    if (short) {
      return "invalid";
    } else {
      return "invalid characters";
    }
  }
  return null;
}

isEmail(String value, {bool short = false}) {
  if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) return 'The email is invalid.';
  return null;
}

isLandline(String value, {bool short = false}) {
  if (value.length == 6 || value.length == 7) {
    return null;
  } else {
    return 'The input is invalid.';
  }
}

isMobile(String value, {bool short = false}) {
  if (value.length == 10) {
    return null;
  } else {
    return 'The input is invalid.';
  }
}

isValidPhone(String value, {bool short = false}) {
  if (value.length == 10) {
    return null;
  } else {
    if (value.length == 6 || value.length == 7) {
      return null;
    } else {
      return 'The input is invalid.';
    }
  }
}

isValidContactNo(String value, {bool short = false}) {
  if (!RegExp(r'^(?:\(?\+977\)?)?[9][6-9]\d{8}|01[-]?[0-9]{7}')
      .hasMatch(value)) {
    return 'The contact number is invalid.';
  }
  return null;
}

server(String name, Map? errors) {
  if (errors == null) return null;
  return errors[name]?[0];
}
