import 'package:horse_fit/core/constants/exports.dart';

class Validation {
  /// This method is responsible for handling
  /// Email Validation
  /// e.g: [Validatoin.validateEmail('email')]
  static String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return 'Email is required';
    } else if (!(email?.isValidEmail ?? true)) {
      return 'Please provide a valid email.';
    } else {
      return null;
    }
  }

  /// This method is responsible for handling
  /// Password Validation
  /// e.g: [Validatoin.validatePassword('password')]
  /// &
  /// Confirm password validation
  /// e.g: [Validatoin.validatePassword('password'),isConfirmPassword:true,confirmPassword:'confirm password']
  static String? validatePassword(String? password,
      {bool isConfirmPassword = false, String? confirmPassword}) {
    if (!isConfirmPassword) {
      if (password?.isEmpty ?? true) {
        return 'Password is required';
      } else if (!(password?.isValidPassword ?? true)) {
        return 'Please provide a valid password';
      }
    }
    return null;
  }
}
