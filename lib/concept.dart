import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ConceptDetailScreen extends StatefulWidget {
  final String title;
  final String content;
  final List<String> example_image;
  final List<String> output_image;
  final BannerAd! _bannerAd;

  ConceptDetailScreen({
    required this.title,
    required this.content,
    required this.example_image,
    required this.output_image,
  });

  @override
  _ConceptDetailScreenState createState() => _ConceptDetailScreenState();
}

class _ConceptDetailScreenState extends State<ConceptDetailScreen> {
  String _bannerAd = 'not null';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[

    Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: widget.content + "\n\n"),
                  TextSpan(
                    text: "Code Example:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children:widget.example_image.map((image) {
                return Padding(
                  padding:const EdgeInsets.only(bottom:8.0),
                  child:Image.asset(image),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            Text(
              'Output :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child:Column(
                  children:widget.output_image.map((image) {
                    return Padding(
                      padding:const EdgeInsets.only(bottom:8.0),
                      child:Image.asset(image),
                    );
                  }).toList(),
                  
                )
            ),
          ],
        ),
      ),
    ),
    // if(_bannerAd != null)
    // Align(
    //   alignment:Alignment.bottomCenter,
    //   child:Text('hello world'),
    // )
      ]
    );
  }
}
