import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/custom_search_bar.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/cubit/manage_subjects_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/cubit/manage_subjects_state.dart';

@RoutePage()
class ManageSubjectsPage
    extends BasePage<ManageSubjectsCubit, ManageSubjectsBuildable, ManageSubjectsListenable> {
  ManageSubjectsPage({super.key});

  late ManageSubjectsCubit _manageSubjectsCubit;
  @override
  void init(BuildContext context) {
    _manageSubjectsCubit = context.read<ManageSubjectsCubit>();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ManageSubjectsBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
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
          const SizedBox(height: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        'Manage Major',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headline,
                        ),
                      ),
                      const Spacer(),
                      CustomSearchBar(
                        items: state.subjectsList
                            .map((subject) => subject.name)
                            .where((name) => name != null)
                            .cast<String>()
                            .toList(),
                        onSearchItemTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Select Major To Get Subjects',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.headline,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                    state.majorsList
                                        .any((major) => major.name == state.selectedMajor)
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
                              _manageSubjectsCubit.updateSelectedDropDownValue(newValue);
                              final selectedMajor =
                                  state.majorsList.firstWhere((major) => major.name == newValue);
                              final result = await _manageSubjectsCubit.getSubjects(
                                name: selectedMajor.name ?? '',
                                majorId: selectedMajor.majorId ?? 0,
                              );
                              _manageSubjectsCubit.updateCurrentMajorId(selectedMajor.majorId ?? 0);

                              log('result: $result');
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
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SizedBox(
                          height: 48,
                          width: context.width * 0.2,
                          child: CommonButton.elevated(
                            backgroundColor: AppColors.blueOriginal,
                            elevation: 0,
                            text: 'Add Subject',
                            onPressed: () {
                              if (state.currentMajorId != 0) {
                                context.router
                                    .push(UpdateSubjectsRoute(name: '', id: state.currentMajorId));
                              } else if (state.currentMajorId == 0) {
                                ResultNotifier(
                                  message: 'Please select major first',
                                  context: context,
                                ).showError();
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: SizedBox(
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: state.subjectsList.length + 1,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisExtent: 34,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final deleteKey = 'delete_$index';
                          final updateKey = 'update_$index';
                          return InkWell(
                            onTap: index != 0 ? () {} : null,
                            child: Container(
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
                                          fontWeight:
                                              index == 0 ? FontWeight.w500 : FontWeight.w400,
                                          color: index == 0
                                              ? AppColors.headline
                                              : AppColors.subjectTableDataColor,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      index == 0
                                          ? 'Subjects'
                                          : state.subjectsList[index - 1].name ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: index == 0 ? FontWeight.w500 : FontWeight.w400,
                                        color: index == 0
                                            ? AppColors.headline
                                            : AppColors.subjectTableDataColor,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const Spacer(),
                                    index == 0
                                        ? SizedBox(
                                            width: 150,
                                            child: Text(
                                              'Actions',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: index == 0
                                                    ? AppColors.headline
                                                    : AppColors.subjectTableDataColor,
                                              ),
                                            ),
                                          )
                                        : Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              MouseRegion(
                                                onEnter: (_) => _manageSubjectsCubit.updateHovering(
                                                    deleteKey, true),
                                                onExit: (_) => _manageSubjectsCubit.updateHovering(
                                                    deleteKey, false),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await _manageSubjectsCubit
                                                        .deleteSubject(
                                                            subjectId: state.subjectsList[index - 1]
                                                                    .subjectId ??
                                                                0)
                                                        .then((_) {
                                                      ResultNotifier(
                                                        context: context,
                                                        message: 'Subject deleted successfully'
                                                            .toUpperCase(),
                                                      ).showSuccess();
                                                      _manageSubjectsCubit.getSubjects(
                                                        name: '',
                                                        majorId: state.currentMajorId,
                                                      );
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
                                              Text(
                                                ' / ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.actionsTextColor,
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) => _manageSubjectsCubit.updateHovering(
                                                    updateKey, true),
                                                onExit: (_) => _manageSubjectsCubit.updateHovering(
                                                    updateKey, false),
                                                child: InkWell(
                                                  onTap: () {
                                                    context.router.push(UpdateSubjectsRoute(
                                                      name:
                                                          state.subjectsList[index - 1].name ?? '',
                                                      id: state.subjectsList[index - 1].subjectId ??
                                                          0,
                                                    ));
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(6),
                                                    child: Text(
                                                      'Update',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400,
                                                        color: state.hoverStates[updateKey] == true
                                                            ? AppColors.blueOriginal
                                                            : AppColors.actionsTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
