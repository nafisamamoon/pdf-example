import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:myui/pdf/pdf-view-page.dart';

class PdfController extends GetxController{
  File? file;
    pickFile()async{
  final result=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['pdf']
  );
  if(result == null) return null;
   file= File(result.paths.first!);
  if(file == null) return ;
 Get.to(PdfViewPage());
  //openPDF(file!);
}
void openPDF(File file){
 // Get.to(PdfViewPage(file: file,));
}
}