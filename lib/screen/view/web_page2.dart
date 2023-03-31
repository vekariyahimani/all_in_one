import 'package:all_in_one/screen/provider/web_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage2 extends StatefulWidget {
  const WebPage2({Key? key}) : super(key: key);

  @override
  State<WebPage2> createState() => _WebPage2State();
}

class _WebPage2State extends State<WebPage2> {
  @override
  void initState() {
    super.initState();

    Provider.of<WebProvider>(context, listen: false).initController();
  }

  WebProvider? webProvidertrue;
  WebProvider? webProviderfalse;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    webProviderfalse = Provider.of<WebProvider>(context, listen: false);
    webProvidertrue = Provider.of<WebProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${webProvidertrue!.web[index].name}",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: WebViewWidget(controller: webProvidertrue!.webViewController!),
      ),
    );
  }
}
