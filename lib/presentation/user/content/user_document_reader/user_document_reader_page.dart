import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:pdfrx/pdfrx.dart';

@RoutePage()
class UserDocumentReaderPage extends StatefulWidget {
  UserDocumentReaderPage({super.key, required this.filePath});

  final String filePath;

  @override
  State<UserDocumentReaderPage> createState() => _UserDocumentReaderPageState();
}

class _UserDocumentReaderPageState extends State<UserDocumentReaderPage> {
  final List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'ElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberry',
    'Fig',
    'Grapes',
    'Honeydew',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: PdfViewer.file(
          widget.filePath,
          initialPageNumber: 5,
          params: PdfViewerParams(
            enableTextSelection: true,
          ),
        ),
      ),
    );
  }
}
