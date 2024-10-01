import 'package:flutter/cupertino.dart';
import 'package:horse_fit/core/arguments/web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../core/constants/exports.dart';

class WebView extends StatefulWidget {
  const WebView({super.key, required WebViewArgs args}) : _args = args;

  final WebViewArgs _args;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController controller;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget._args.url))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) => setState(() => isLoading = true),
          onProgress: (progress) => setState(() => isLoading = true),
          onPageFinished: (url) => setState(() => isLoading = false),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: widget._args.title),
      body: isLoading
          ? Center(child: CupertinoActivityIndicator(radius: 62.h))
          : WebViewWidget(controller: controller),
    );
  }
}
