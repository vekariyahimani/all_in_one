import 'package:all_in_one/screen/provider/web_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WebPage1 extends StatefulWidget {
  const WebPage1({Key? key}) : super(key: key);

  @override
  State<WebPage1> createState() => _WebPage1State();
}

class _WebPage1State extends State<WebPage1> {
  WebProvider? webProvidertrue;
  WebProvider? webProviderfalse;

  @override
  Widget build(BuildContext context) {
    webProviderfalse = Provider.of<WebProvider>(context, listen: false);
    webProvidertrue = Provider.of<WebProvider>(context, listen: true);


    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(
              title: Text("Eduction Websites"),
              backgroundColor: Colors.black,
              elevation: 0,
              centerTitle: true,
            ),
            body: Stack(
              children: [

                Expanded(
                  child: ListView.builder(
                    itemCount: webProviderfalse!.web.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        webProviderfalse!.changeindex(index);
                        Navigator.pushNamed(context, 'view', arguments: index);
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        '${webProvidertrue!.web[index].image}',
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${webProvidertrue!.web[index].name}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Eduction online pltform",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 72,
                          ),
                          Icon(Icons.check_box)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
