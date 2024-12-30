import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';

@RoutePage()
class UserDocumentReaderPage extends StatefulWidget {
  UserDocumentReaderPage({super.key, required this.filePath});

  final String filePath;

  @override
  State<UserDocumentReaderPage> createState() => _UserDocumentReaderPageState();
}

class _UserDocumentReaderPageState extends State<UserDocumentReaderPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 39, left: 12),
              child: InkWell(
                onTap: () {
                  context.router.maybePop();
                },
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 42,
                  width: 42,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(),
          // PdfViewer.file(
          //   widget.filePath,
          //   initialPageNumber: 5,
          //   params: PdfViewerParams(
          //     enableTextSelection: true,
          //     maxScale: 3.0,
          //     minScale: 1.0,
          //   ),
          // ),
        ),
      ),
    );
  }
}
