import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'concept.dart';


void main()  {
  runApp(HtmlLearningApp());
}

class HtmlLearningApp extends StatelessWidget {
  Future<InitializationStatus> _initGoogleMobileAds(){
    return MobileAds.instance.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConceptListScreen(),
      initialRoute:'/home',
      routes:{
        '/home':(context) => ConceptListScreen(),
      }
    );
  }
}

class ConceptListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> concepts = [
    {
      "title": "Introduction to HTML",
      "content": "HTML (HyperText Markup Language) is the standard language for creating web pages. It describes the structure of a web page using markup.",  
      "example_image":["assets/example/example_1.png" ],
      "output_image:":["assets/example/output_1.png"],
    },
    {
      "title": "Basic Tags",
      "content": "Common HTML tags include <html>, <head>, <title>, <body>, <h1> to <h6>, <p>, <a>, <img>, <ul>, <ol>, <li>, <table>, <tr>, <td>, and more.",
      "example_image":["assets/example/example_2.png" ],
      "output_image:":["assets/example/output_2.png"],
       },
    {
      "title": "Attributes",
      "content": "Attributes provide additional information about HTML elements. Common attributes include id, class, style, src, href, alt, and title.",
      "example_image":["assets/example/example_3.png" ],
      "output_image:":["assets/example/output_3.png"],
     },
    {
      "title": "Headings",
      "content": "Headings are defined with <h1> to <h6> tags. <h1> defines the most important heading, while <h6> defines the least important.",
      "example_image":["assets/example/example_4.png" ],
      "output_image:":["assets/example/output_4.png"],
      },
    {
      "title": "Paragraphs",
      "content": "Paragraphs are defined with the <p> tag. They are used to define blocks of text.",
      "example_image":["assets/example/example_6.png" ],
      "output_image:":["assets/example/output_6.png"],
    },
    {
      "title": "Links",
      "content": "Links are created using the <a> tag. The href attribute specifies the URL of the page the link goes to.",
      "example_image":["assets/example/example_7.png" ],
      "output_image:":["assets/example/output_7.png"],
     },
    {
      "title": "Images",
      "content": "Images are embedded using the <img> tag. The src attribute specifies the path to the image, and the alt attribute provides alternative text.",
      "example_image":["assets/example/example_8.png" ],
      "output_image:":["assets/example/output_8.png"],
    },
    {
      "title": "Lists",
      "content": "Ordered lists are defined with the <ol> tag, and unordered lists are defined with the <ul> tag. List items are defined with the <li> tag.",
      "example_image":["assets/example/example_10.png" ],
      "output_image:":["assets/example/output_10.png"],
     },
    {
      "title": "Tables",
      "content": "Tables are created using the <table> tag. Rows are defined with <tr>, and cells are defined with <td> (for data cells) or <th> (for header cells).",
      "example_image":["assets/example/example_11.png" ],
      "output_image:":["assets/example/output_11.png"],
    },
    {
      "title": "Forms",
      "content": "Forms are used to collect user input. They are defined with the <form> tag, and can include input elements like <input>, <textarea>, <select>, and <button>.",
      "example_image":["assets/example/example_12.png" ],
      "output_image:":["assets/example/output_12.png"],
    },
    {
      "title": "Semantic Elements",
      "content": "HTML5 introduced semantic elements like <article>, <section>, <nav>, <header>, <footer>, and <aside> to provide more meaningful structure.",
      "example_image":["assets/example/example_13.png" ],
      "output_image:":["assets/example/output_13.png"],
     },
    {
      "title": "HTML5 New Features",
      "content": "HTML5 introduced new elements like <canvas>, <audio>, <video>, and new form controls. It also improved support for web applications.",
      "example_image":["assets/example/example_14.png" ],
      "output_image:":["assets/example/output_14.png"],
    },
    {
      "title": "Multimedia",
      "content": "Multimedia elements include <audio>, <video>, and <embed>. These elements make it easy to add audio and video to web pages.",
      "example_image":["assets/example/example_15.png" ],
      "output_image:":["assets/example/output_15.png"],
     },
    {
      "title": "Responsive Design",
      "content": "Responsive design ensures that web pages look good on all devices. It involves using flexible grid layouts, media queries, and responsive images. Below the Fist code snipped is without reponsive , second image we added that snippet to the style tag and the corresponding result in the output",
      "example_image":["assets/example/example_16.png" , "assets/example/example_17.png"],
      "output_image:":["assets/example/output_16.png", "assets/example/output_17.png"],
     },
    {
      "title": "Best Practices",
      "content": "Best practices include using semantic HTML, validating HTML code, using alt attributes for images, and ensuring accessibility.",
      "example_image":["assets/example/example_18.png" ],
      "output_image:":["assets/example/output_18.png"],
     },
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML Learning App',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
        backgroundColor:Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: concepts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(concepts[index]['title']!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConceptDetailScreen(
                          title: concepts[index]['title']!,
                          content: concepts[index]['content']!,
                          example_image: concepts[index]['example_image'] as List<String>,
                          output_image: concepts[index]['output_image:'] as List<String>,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

