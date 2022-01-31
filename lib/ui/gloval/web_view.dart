import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class LinkView extends StatefulWidget {

  @override
  State<LinkView> createState() => _LinkViewState();
}

class _LinkViewState extends State<LinkView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://flutter.dev';

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    
    );
  }
}
