import 'package:ebookreader/document.dart';
import 'package:ebookreader/screens/home_screen.dart';
import 'package:ebookreader/screens/reader_screen.dart';
import 'package:flutter/material.dart';

class PdfBook extends StatefulWidget {
  const PdfBook({Key? key}) : super(key: key);

  @override
  State<PdfBook> createState() => _PdfBookState();
}

class _PdfBookState extends State<PdfBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("BOOK-LIST"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,


          children: [
            Text(
              "Have a look!!!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Column(
                children: Document.doc_list
                    .map((doc) => ListTile(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ReaderScreen(doc)));
                  },
                  title: Text(
                    doc.doc_title!,
                    overflow: TextOverflow.ellipsis,
                  ),
                subtitle: Text("${doc.page_num!}Pages"),
                trailing :Text(doc.doc_date!),

                leading:Icon(Icons.picture_as_pdf_rounded,
                        color: Colors.red,
                  size: 32,

                ),
              )).toList(),
            ),
          ],
        ),
      )),
    );
  }
}
