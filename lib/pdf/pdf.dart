import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myui/pdf/api.dart';
import 'package:myui/pdf/controller/pdf-controller.dart';
import 'package:myui/pdf/pdf-view-page.dart';
class Pdf extends StatelessWidget {
  //const Pdf({ Key? key }) : super(key: key);
PdfController controller=Get.put(PdfController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: TextButton(onPressed: ()async{
            //final file=await PdfApi.pickFile();
        controller.pickFile() as File;
            //if(file == null) return ;
           // openPDF(context,file);
          },
           child: Text('click')
           ),
        ),
      ),
    );
    
  }
 void openPDF(BuildContext context,File file){
//Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PdfViewPage(file:file)));
  }
}