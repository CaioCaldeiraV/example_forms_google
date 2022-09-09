import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FormWebView extends StatefulWidget {
  const FormWebView({Key? key}) : super(key: key);

  @override
  _FormWebViewState createState() => _FormWebViewState();
}

class _FormWebViewState extends State<FormWebView> {
  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Form Test"),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl:
            'https://docs.google.com/forms/d/e/1FAIpQLSdvrIj7CGcgCklwuNVYmOeMtD16QENrqcmXD9njJY6SmkpyoA/viewform?usp=sf_link',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
