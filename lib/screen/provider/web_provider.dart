import 'package:all_in_one/screen/modal/webmodal.dart';
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebProvider extends ChangeNotifier {
  List<WebModal> web = [
    WebModal(
        image: "assets/image/image1.jpg",
        name: "Wikipedia",
        link:"https://www.wikipedia.org"),
    WebModal(
        image: "assets/image/image2.jpg",
        name: "W3school",
        link:"https://www.w3schools.com/"),
    WebModal(
        image: "assets/image/image3.png",
        name: "Java-t-point",
        link:"https://www.javatpoint.com"),
    WebModal(
        image: "assets/image/image4.png",
        name: "TutorialsPoint",
        link:"https://www.prepleaf.com"),
    WebModal(
        image: "assets/image/image5.png",
        name: "BYJU's",
        link:"https://byjus.com/"),
    WebModal(
        image: "assets/image/image6.jpg",
        name: "Vedantu",
        link:"https://www.vedantu.com/"),
    WebModal(
        image: "assets/image/image7.jpg",
        name: "Aakash",
        link:"https://iacst.aakash.ac.in"),
  ];

  WebViewController? webViewController;
  int i=0;

  void initController() {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${web[i].link}"));
  }
  void changeindex(int index)
  {
    i=index;
  }


int b1=0;
  void selectIndex(int value) {
    b1 = value;
    notifyListeners();
    print(b1);
  }
}
