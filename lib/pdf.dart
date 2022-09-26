import "package:flutter/material.dart";
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFPAGE extends StatefulWidget {
  final String? pdf;
  const PDFPAGE({super.key, required this.pdf});

  @override
  State<PDFPAGE> createState() => _PDFPAGEState();
}

class _PDFPAGEState extends State<PDFPAGE> {
  bool _isLoading = true;
  // late  document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    //document = await
    SfPdfViewer.asset(
        'pdfs/QUESTIONS0042.pdf'); //PDFDocument.fromAsset('lib/pdfs/QUESTIONS0042.pdf');
    changePDF(1);
    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);
    if (value == 1) {
      // document = await PDFDocument.fromAsset('QUESTIONS0042.pdf');
      SfPdfViewer.asset('pdfs/QUESTIONS0042.pdf');
    } else if (value == 2) {
      // document = await PDFDocument.fromURL(
      // "https://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf",
      /* cacheManager: CacheManager(
          Config(
            "customCacheKey",
            stalePeriod: const Duration(days: 2),
            maxNrOfCacheObjects: 10,
          ),
        ), */
      // );
    } else {
      //document =
      await SfPdfViewer.asset(
          'pdfs/CSC1100 Computer Literacy Examination End of Semester I 202-2021 (1).pdf'); //PDFDocument.fromAsset('QUESTIONS0042.pdf');
    }
    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterPluginPDFViewer'),
      ),
      // ignore: prefer_const_constructors
      // body: Center(
      // child: _isLoading
      //     ? const Center(child: CircularProgressIndicator())
    );

    // : PDFViewer(document: document, zoomSteps: 1
  }
}
