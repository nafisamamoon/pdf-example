/*import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
class PdfViewPage extends StatefulWidget {
  const PdfViewPage({ Key? key,required this.file }) : super(key: key);
final File file;

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  @override
  Widget build(BuildContext context) {
    final name=basename(widget.file.path);
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: PDFView(
        filePath: widget.file.path,
        
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:myui/pdf/controller/pdf-controller.dart';
import 'package:path/path.dart';
class PdfViewPage extends StatelessWidget {
  //const PdfViewPage({ Key? key }) : super(key: key);

PdfController controller=Get.find();
  @override
  Widget build(BuildContext context) {
      final name=basename(controller.file!.path);
    return Scaffold(
      appBar: AppBar(
title:Text(name)
      ),
body: PDFView(
        filePath: controller.file!.path,
        
      ),
    );
  }
}