import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cocis_archives/pdf.dart';
import 'package:cocis_archives/sync.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//import android.os.Bundle;
//import io.flutter.embedding.android.FlutterActivity;

class navi extends StatefulWidget {
  final List<String?> pdfs;
  final String title;

  const navi({super.key, required this.pdfs, required this.title});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  // ignore: recursive_getters
  //String get data => data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF'S"),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: widget.pdfs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                //print(widget.pdfs[0]);
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MyPdf())));
              },
              child: Card(
                child: Container(
                  height: 290,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ));
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 264,
        ),
      ),
    );
  }
}

// class Compsc1 extends StatefulWidget {
//   const Compsc1({super.key});

//   @override
//   State<Compsc1> createState() => _Compsc1State();
// }

// class _Compsc1State extends State<Compsc1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Navigation'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text('Welcome to this navigtion This is unit 2'),
//       ),
//     );
//   }
// }

// class Comp3 extends StatefulWidget {
//   const Comp3({super.key});

//   @override
//   State<Comp3> createState() => _Comp3State();
// }

// class _Comp3State extends State<Comp3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Navigation'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text('Welcome to this navigtion to comp 3'),
//       ),
//     );
//   }
// }
