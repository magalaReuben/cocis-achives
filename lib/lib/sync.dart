import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

//void main() {
//  runApp(const MyPdf());
//}

class HomePage extends StatefulWidget {
  final String? pdf;
  const HomePage({super.key, required this.pdf});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    print(widget.pdf);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SfPdfViewer.asset('pdfs/QUESTIONS0042.pdf'),
        ));
  }
}

// class MyPdf extends StatelessWidget {
//   final String? pdf;
//   const MyPdf({super.key, required this.pdf});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(pdf:),
//     );
//   }
// }

class MyPdf extends StatefulWidget {
  final String? pdf;
  const MyPdf({super.key, required this.pdf});

  @override
  State<MyPdf> createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(pdf: widget.pdf),
    );
  }
}
