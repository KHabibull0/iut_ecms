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
import 'package:iut_ecms/domain/models/app_enum.dart';
import 'package:iut_ecms/domain/models/e_letter_model/e_letter_model.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/cubit/update_e_letters_state.dart';

@RoutePage()
class UpdateELettersPage
    extends BasePage<UpdateELettersCubit, UpdateELettersBuildable, UpdateELettersListenable> {
  UpdateELettersPage({required this.subjectId, super.key});

  final int subjectId;

  late UpdateELettersCubit _eLettersCubit;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _relatedToController = TextEditingController();
  final TextEditingController _filePathController = TextEditingController();

  @override
  void init(BuildContext context) {
    _eLettersCubit = context.read<UpdateELettersCubit>();
    super.init(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _relatedToController.dispose();
    _filePathController.dispose();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, UpdateELettersBuildable state) {
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
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              spacing: 32,
              children: [
                Expanded(
                  child: _inputFieldView(
                    controller: _titleController,
                    header: 'Enter Title',
                    hint: 'Title',
                  ),
                ),
                Expanded(
                  child: _inputFieldView(
                    controller: _authorController,
                    header: 'Enter Author',
                    hint: 'Author',
                  ),
                ),
                Expanded(
                  child: _inputFieldView(
                    controller: _relatedToController,
                    header: 'Related To',
                    hint: 'Which course, department or event it is related',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              spacing: 32,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Type',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.headline,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 48,
                        width: context.width * 0.3,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.dottedBorder, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: state.selectedELetterType.isNotEmpty &&
                                    [
                                      ELetterType.ANNOUNCEMENT.name,
                                      ELetterType.MEMO.name,
                                      ELetterType.NOTIFICATION.name
                                    ].contains(state.selectedELetterType)
                                ? state.selectedELetterType
                                : null,
                            items: <String>[
                              ELetterType.ANNOUNCEMENT.name,
                              ELetterType.MEMO.name,
                              ELetterType.NOTIFICATION.name
                            ].map((entry) {
                              return DropdownMenuItem(
                                value: entry,
                                child: Text(
                                  entry,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) async {
                              if (newValue == null) return;
                              _eLettersCubit.updateELetterType(newValue);
                            },
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey.shade600,
                            ),
                            isExpanded: true,
                            hint: Text('Select Type'),
                            borderRadius: BorderRadius.circular(10),
                            dropdownColor: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Expanded(child: SizedBox()),
              ],
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: () {
                _eLettersCubit.pickPdfFile().then((result) {
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
                            : Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  _filePathController.text.split('/').last,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primary,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                        const SizedBox(height: 8),
                        Text(
                          _filePathController.text.isEmpty
                              ? 'Upload E-letter'
                              : 'E-letter Uploaded',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 82),
            SizedBox(
              height: 52,
              width: 200,
              child: CommonButton.elevated(
                text: 'Add E-letter',
                loading: state.loading,
                onPressed: () async {
                  if (_titleController.text.isNotEmpty ||
                      _filePathController.text.isNotEmpty ||
                      _relatedToController.text.isNotEmpty ||
                      _authorController.text.isNotEmpty ||
                      state.selectedELetterType.isNotEmpty) {
                    ELetterModel eLetterModel = ELetterModel(
                      subjectId: subjectId,
                      title: _titleController.text,
                      file: _filePathController.text,
                      author: _authorController.text,
                      path: _filePathController.text,
                      relatedTo: _relatedToController.text,
                      type: state.selectedELetterType,
                    );
                    log('e e-letter sending... $eLetterModel');
                    await _eLettersCubit.addELetterToSocket(
                        eLetterModel: eLetterModel.copyWith(file: null));

                    await _eLettersCubit.addELetter(eLetterModel: eLetterModel).then((value) {
                      if (value.isEmpty) {
                        ResultNotifier(
                          context: context,
                          message: 'E-LETTER UPLOADED SUCCESSFULLY',
                        ).showSuccess();
                        _titleController.clear();
                        _relatedToController.clear();
                        _authorController.clear();
                        _filePathController.clear();
                        _eLettersCubit.updateELetterType('');
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
