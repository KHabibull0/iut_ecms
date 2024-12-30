import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/cubit/manage_e_letters_state.dart';

@RoutePage()
class ManageELettersPage
    extends BasePage<ManageELettersCubit, ManageELettersBuildable, ManageELettersListenable> {
  ManageELettersPage({super.key});
  late ManageELettersCubit _manageELettersCubit;

  @override
  void init(BuildContext context) {
    _manageELettersCubit = context.read<ManageELettersCubit>();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ManageELettersBuildable state) {
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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manage E-Letters',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      value: state.selectedMajor.isNotEmpty == true &&
                              state.majorsList.any((major) => major.name == state.selectedMajor)
                          ? state.selectedMajor
                          : null,
                      items: state.majorsList.map((entry) {
                        return DropdownMenuItem(
                          value: entry.name,
                          child: Text(
                            entry.name ?? 'null',
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
                        _manageELettersCubit.updateSelectedMajor(newValue);
                        final selectedMajor =
                            state.majorsList.firstWhere((major) => major.name == newValue);
                        await _manageELettersCubit.getSubjects(
                          name: selectedMajor.name ?? '',
                          majorId: selectedMajor.majorId ?? 0,
                        );
                        _manageELettersCubit.updateCurrentMajorId(selectedMajor.majorId ?? 0);
                      },
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey.shade600,
                      ),
                      isExpanded: true,
                      hint: Text('Select Major'),
                      borderRadius: BorderRadius.circular(10),
                      dropdownColor: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 24),
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
                      value: state.selectedSubject.isNotEmpty == true &&
                              state.subjectsList
                                  .any((subject) => subject.name == state.selectedSubject)
                          ? state.selectedSubject
                          : null,
                      items: state.subjectsList.map((entry) {
                        return DropdownMenuItem(
                          value: entry.name,
                          child: Text(
                            entry.name ?? 'null',
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
                        _manageELettersCubit.updateSelectedSubject(newValue);
                        final selectedSubject =
                            state.subjectsList.firstWhere((subject) => subject.name == newValue);

                        await _manageELettersCubit.getELetters(selectedSubject.subjectId ?? 0).then(
                          (returnedResult) {
                            if (returnedResult.isNotEmpty) {
                              ResultNotifier(context: context, message: returnedResult).showError();
                            }
                          },
                        );
                        _manageELettersCubit.updateCurrentSubjectId(selectedSubject.subjectId ?? 0);
                      },
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey.shade600,
                      ),
                      isExpanded: true,
                      hint: Text('Select Subjects'),
                      borderRadius: BorderRadius.circular(10),
                      dropdownColor: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Available E-Letters',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: state.eLettersList.length + 1,
                padding: EdgeInsets.only(bottom: 24, top: 12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 34,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final deleteKey = 'delete_$index';

                  return Container(
                    decoration: BoxDecoration(
                      color: (index + 1) % 2 == 0 ? AppColors.white : AppColors.lowGrey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            child: Text(
                              index == 0 ? 'N.' : '$index',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: index == 0 ? FontWeight.w500 : FontWeight.w400,
                                color: index == 0
                                    ? AppColors.headline
                                    : AppColors.subjectTableDataColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            index == 0 ? 'Subjects' : '${state.eLettersList[index - 1].title}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: index == 0 ? FontWeight.w500 : FontWeight.w400,
                              color:
                                  index == 0 ? AppColors.headline : AppColors.subjectTableDataColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 150,
                            child: index == 0
                                ? Text(
                                    'Actions',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: index == 0
                                          ? AppColors.headline
                                          : AppColors.subjectTableDataColor,
                                    ),
                                  )
                                : Align(
                                    alignment: Alignment.center,
                                    child: state.deletingStates[
                                                '${state.eLettersList[index - 1].eLetterId}'] ==
                                            true
                                        ? CircularProgressIndicator.adaptive()
                                        : MouseRegion(
                                            onEnter: (_) => _manageELettersCubit.updateHovering(
                                                deleteKey, true),
                                            onExit: (_) => _manageELettersCubit.updateHovering(
                                                deleteKey, false),
                                            child: InkWell(
                                              onTap: () async {
                                                final eLetterId =
                                                    state.eLettersList[index - 1].eLetterId;
                                                if (eLetterId == null) {
                                                  ResultNotifier(
                                                    context: context,
                                                    message: 'Invalid book ID',
                                                  ).showError();
                                                  return;
                                                }
                                                await _manageELettersCubit
                                                    .deleteELetters(eLetterId)
                                                    .then((result) async {
                                                  if (result.isNotEmpty) {
                                                    ResultNotifier(
                                                      context: context,
                                                      message: result,
                                                    ).showError();
                                                  } else {
                                                    await _manageELettersCubit
                                                        .getELetters(state.subjectId);
                                                    ResultNotifier(
                                                      context: context,
                                                      message: 'E-LETTER DELETED SUCCESSFULLY',
                                                    ).showSuccess();
                                                  }
                                                });
                                              },
                                              child: Container(
                                                padding: const EdgeInsets.all(6),
                                                child: Text(
                                                  'Delete',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: state.hoverStates[deleteKey] == true
                                                        ? AppColors.red
                                                        : AppColors.actionsTextColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 52,
        width: 150,
        child: CommonButton.elevated(
          text: 'Add E-Letter',
          onPressed: () {
            if (state.subjectId == 0) {
              ResultNotifier(context: context, message: 'Please select a subject').showError();
            } else {
              context.router.push(UpdateELettersRoute(subjectId: state.subjectId));
            }
          },
        ),
      ),
    );
  }
}
