import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  /// Performs a simple [Navigator.pop] action and returns given [result]
  void pop<T>({result}) => Navigator.pop(this, result);

  /// perform push with routeName
  Future<dynamic> pushNamed(
    String screenName, {
    Object? arguments,
  }) async =>
      await Navigator.of(this).pushNamed(screenName, arguments: arguments);

  /// Performs a [Navigator.pushNamedAndRemoveUntil] action with given [routeName]
  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    bool routes = false,
  }) async =>
      await Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        (Route<dynamic> route) => routes,
        arguments: arguments,
      );

  /// perform replash with routeName
  Future<dynamic> pushReplacementNamed(
    String screenName, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushReplacementNamed(screenName, arguments: arguments);
}
