import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main()
{
  runApp(MaterialApp(home: WebViewEx(),));
}
class WebViewEx extends StatefulWidget {
  const WebViewEx({super.key});

  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController controller;

  @override
  void iniState(){
    controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://web.whatsapp.com/'));
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My WebView'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
