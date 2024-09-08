import '../constants/exports.dart';

class Validation {
  /// This method is responsible for handling
  /// Name Validation
  /// e.g: [locator<Validation>().validateName('name')]
  String? validateName(String? userName, {String name = 'First'}) {
    if (userName?.isEmpty ?? true) {
      return 'Name is required';
    } else if (!(userName?.isValidName ?? true)) {
      return 'Please provide a valid name';
    } else {
      return null;
    }
  }

  /// This method is responsible for handling
  /// Email Validation
  /// e.g: [locator<Validation>().validateEmail('email')]
  String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return 'Email is required';
    } else if (!(email?.isValidEmail ?? true)) {
      return 'Please provide a valid email';
    } else {
      return null;
    }
  }

  /// This method is responsible for handling
  /// Password Validation
  /// e.g: [locator<Validation>().validatePassword('password')]
  /// &
  /// Confirm password validation
  /// e.g: [locator<Validation>().validatePassword('password',isConfirmPassword:true,confirmPassword:'confirm password')]
  String? validatePassword(String? password,
      {bool isConfirmPassword = false, String? confirmPassword}) {
    if (!isConfirmPassword) {
      if (password?.isEmpty ?? true) {
        return 'Password is required';
      } else if (!(password?.isValidPassword ?? true)) {
        return 'Please provide a valid password';
      }
    } else {
      if (confirmPassword?.isEmpty ?? true) {
        return 'Confirm password is required';
      } else if (!(confirmPassword?.isValidPassword ?? true)) {
        return 'Please provide a valid confirm password';
      } else if (confirmPassword != password) {
        return 'Password don\'t match';
      }
    }
    return null;
  }
}
