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
import 'package:iut_ecms/domain/models/article_model/article_model.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/cubit/update_articles_state.dart';

@RoutePage()
class UpdateArticlesPage
    extends BasePage<UpdateArticlesCubit, UpdateArticlesBuildable, UpdateArticlesListenable> {
  UpdateArticlesPage({required this.subjectId, super.key});

  final int subjectId;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _referenceController = TextEditingController();
  final TextEditingController _publishedYearController = TextEditingController();
  final TextEditingController _filePathController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();

  late UpdateArticlesCubit _updateArticlesCubit;

  @override
  void init(BuildContext context) {
    _updateArticlesCubit = context.read<UpdateArticlesCubit>();
    super.init(context);
  }

  @override
  void dispose() {
    _titleController.clear();
    _referenceController.clear();
    _publishedYearController.clear();
    _filePathController.clear();
    _authorController.clear();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, UpdateArticlesBuildable state) {
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
                    controller: _titleController,
                    header: 'Article Title',
                    hint: 'Write here Book title',
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: _inputFieldView(
                    controller: _referenceController,
                    header: 'Reference',
                    hint: 'Reference of Article',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: _inputFieldView(
                    inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                    controller: _publishedYearController,
                    header: 'Published Year',
                    hint: 'Article Published Year',
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: _inputFieldView(
                    controller: _authorController,
                    header: 'Article Author',
                    hint: 'Article Author',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                _updateArticlesCubit.pickPdfFile().then((result) {
                  if (result.isNotEmpty) {
                    log(result);
                    _filePathController.text = result;
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
                        _filePathController.text.isEmpty
                            ? state.uploadFileLoading
                                ? CircularProgressIndicator.adaptive()
                                : Icon(Icons.add)
                            : Text(
                                _filePathController.text.split('/').last,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                        const SizedBox(height: 8),
                        Text(
                          _filePathController.text.isEmpty ? 'Upload Article' : 'Article Uploaded',
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
                text: 'Add Article',
                loading: state.loading,
                onPressed: () async {
                  if (_titleController.text.isNotEmpty &&
                      _filePathController.text.isNotEmpty &&
                      _publishedYearController.text.isNotEmpty &&
                      _referenceController.text.isNotEmpty &&
                      _authorController.text.isNotEmpty) {
                    ArticleModel articleModel = ArticleModel(
                      file: _filePathController.text,
                      subjectId: subjectId,
                      author: _authorController.text,
                      title: _titleController.text,
                      path: _filePathController.text,
                      reference: _referenceController.text,
                      publishYear: int.tryParse(_publishedYearController.text),
                    );
                    log('e article sending... $articleModel');
                    await _updateArticlesCubit.addArticleToSocket(
                        articleModel: articleModel.copyWith(file: null));
                    await _updateArticlesCubit.addArticle(articleModel: articleModel).then((value) {
                      if (value.isEmpty) {
                        ResultNotifier(
                          context: context,
                          message: 'ARTICLE UPLOADED SUCCESSFULLY',
                        ).showSuccess();
                        _titleController.clear();
                        _filePathController.clear();
                        _publishedYearController.clear();
                        _referenceController.clear();
                        _authorController.clear();
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

  Widget _inputFieldView({
    required String header,
    required String hint,
    TextEditingController? controller,
    TextInputType? inputType,
    List<TextInputFormatter>? inputFormatter,
  }) {
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
