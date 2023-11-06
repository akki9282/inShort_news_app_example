import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class ReadMoreWebview extends StatefulWidget {}

class ReadMoreWebview extends StatefulWidget {
  final String? url;
  const ReadMoreWebview({super.key, required this.url});

  @override
  State<ReadMoreWebview> createState() => _ReadMoreWebviewState();
}

class _ReadMoreWebviewState extends State<ReadMoreWebview> {
  late final WebViewController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(widget.url.toString())) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('News'),
      // ),
      body: SafeArea(child: WebViewWidget(controller: _controller)),
    );
  }
}
