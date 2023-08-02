// ignore_for_file: prefer_final_fields

import 'package:barbershop_frontend/core/application/error_or_value.dart';
import 'package:flutter/foundation.dart';
import 'package:email_validator/email_validator.dart';

extension Validator on String {
  bool isValidEmail() {
    return EmailValidator.validate(this);
  }

  bool isValidPassword() =>
      RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{8,}$')
          .hasMatch(this);
}

class AuthValidationNotifier extends ChangeNotifier {
  ErrorOrValue _name = ErrorOrValue(null, null);
  ErrorOrValue _email = ErrorOrValue(null, null);
  ErrorOrValue _password = ErrorOrValue(null, null);
  ErrorOrValue _phoneNumber = ErrorOrValue(null, null);

  ErrorOrValue get name => _name;
  ErrorOrValue get email => _email;
  ErrorOrValue get password => _password;
  ErrorOrValue get phoneNumber => _phoneNumber;

  bool isValid() {
    return _name.value != null &&
        _email.value != null &&
        _password.value != null &&
        _phoneNumber.value != null;
  }

  void validateName(String name) {
    name.isNotEmpty && name.trim().length >= 4
        ? _name = ErrorOrValue(name.trim(), null)
        : _name = ErrorOrValue(null, 'Name must be at least 4 characters.');
    notifyListeners();
  }

  void validateEmail(String email) {
    email.trim().isValidEmail()
        ? _email = ErrorOrValue(email.trim(), null)
        : _email = ErrorOrValue(null, 'Please, enter a valid email address.');
    notifyListeners();
  }

  void validatePassword(String password) {
    password.trim().isValidPassword()
        ? _password = ErrorOrValue(password.trim(), null)
        : _password = ErrorOrValue(null,
            'Password must be minimum of 8 characters and include atleast one uppercase letter, lowercase letter , number and special character');
    notifyListeners();
  }

  void validatePhoneNumber(String phoneNumber) {
    debugPrint(phoneNumber);
    phoneNumber.length == 10
        ? _phoneNumber = ErrorOrValue(phoneNumber, null)
        : _phoneNumber =
            ErrorOrValue(null, 'Phone number should be 10 numbers');
    notifyListeners();
  }
}
