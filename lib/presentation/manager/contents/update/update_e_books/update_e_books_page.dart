import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/domain/models/e_book_model/e_book_model.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/cubit/update_e_books_state.dart';

@RoutePage()
class UpdateEBooksPage
    extends BasePage<UpdateEBooksCubit, UpdateEBooksBuildable, UpdateEBooksListenable> {
  UpdateEBooksPage({required this.subjectId, super.key});

  final int subjectId;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController pageCountController = TextEditingController();
  TextEditingController bookPathController = TextEditingController();

  late UpdateEBooksCubit _updateEBooksCubit;

  @override
  void init(BuildContext context) {
    _updateEBooksCubit = context.read<UpdateEBooksCubit>();
    super.init(context);
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    authorController.dispose();
    pageCountController.dispose();
    bookPathController.dispose();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, UpdateEBooksBuildable state) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: _inputFieldView(
                    controller: titleController,
                    header: 'Book Title',
                    hint: 'Write here Book title',
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: _inputFieldView(
                    controller: authorController,
                    header: 'Book Author',
                    hint: 'Author of Book',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: _inputFieldView(
                    controller: descriptionController,
                    header: 'Book Description',
                    hint: 'Description of Book',
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: _inputFieldView(
                    inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                    controller: pageCountController,
                    header: 'Book Pages',
                    hint: 'Number of Pages in Book',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                _updateEBooksCubit.pickPdfFile().then((result) {
                  if (result.isNotEmpty) {
                    log(result);
                    bookPathController.text = result;
                  }
                });
              },
              child: SizedBox(
                height: 128,
                width: context.width * 0.4,
                child: DottedBorder(
                  color: AppColors.dottedBorder,
                  strokeWidth: 1,
                  dashPattern: [10, 8],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        bookPathController.text.isEmpty
                            ? state.uploadFileLoading
                                ? CircularProgressIndicator.adaptive()
                                : Icon(Icons.add)
                            : Text(
                                bookPathController.text.split('/').last,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                        const SizedBox(height: 8),
                        Text(
                          bookPathController.text.isEmpty ? 'Upload Book' : 'Book Uploaded',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 52),
            SizedBox(
              height: 52,
              width: 200,
              child: CommonButton.elevated(
                text: 'Add Book',
                loading: state.loading,
                onPressed: () async {
                  if (titleController.text.isNotEmpty ||
                      descriptionController.text.isNotEmpty ||
                      authorController.text.isNotEmpty ||
                      pageCountController.text.isNotEmpty ||
                      bookPathController.text.isNotEmpty ||
                      descriptionController.text.isNotEmpty) {
                    EBookModel eBookModel = EBookModel(
                      subjectId: subjectId,
                      description: descriptionController.text,
                      author: authorController.text,
                      book: bookPathController.text,
                      title: authorController.text,
                      pageCount: int.tryParse(pageCountController.text),
                    );
                    log('e book sending... $eBookModel');
                    await _updateEBooksCubit.addEBook(eBookModel: eBookModel).then((value) {
                      if (value.isEmpty) {
                        ResultNotifier(
                          context: context,
                          message: 'BOOK UPLOADED SUCCESSFULLY',
                        ).showSuccess();
                        titleController.clear();
                        descriptionController.clear();
                        authorController.clear();
                        pageCountController.clear();
                        bookPathController.clear();
                      } else {
                        ResultNotifier(
                          context: context,
                          message: value,
                        ).showError();
                      }
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputFieldView(
      {required String header,
      required String hint,
      TextEditingController? controller,
      TextInputType? inputType,
      List<TextInputFormatter>? inputFormatter}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.headline,
          ),
        ),
        const SizedBox(height: 4),
        CommonTextField(
          inputFormatter: inputFormatter,
          inputType: inputType,
          borderRadius: 10,
          controller: controller,
          hint: hint,
        ),
      ],
    );
  }
}
