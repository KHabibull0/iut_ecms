import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/router/app_router.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/custom_search_bar.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_majors/cubit/manage_majors_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_majors/cubit/manage_majors_state.dart';

@RoutePage()
class ManageMajorsPage
    extends BasePage<ManageMajorsCubit, ManageMajorsBuildable, ManageMajorsListenable> {
  ManageMajorsPage({super.key});

  late ManageMajorsCubit _manageMajorsCubit;

  @override
  void init(BuildContext context) async {
    super.init(context);
    _manageMajorsCubit = context.read<ManageMajorsCubit>();
    await _manageMajorsCubit.getMajors();
  }

  @override
  void onFocusGained(BuildContext context) async {
    _manageMajorsCubit = context.read<ManageMajorsCubit>();
    await _manageMajorsCubit.getMajors();
    super.onFocusGained(context);
  }

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
  Widget builder(BuildContext context, ManageMajorsBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: SizedBox(
          height: 52,
          width: 150,
          child: CommonButton.elevated(
            backgroundColor: AppColors.blueOriginal,
            icon: Icon(Icons.add, color: AppColors.white),
            text: 'Add Major',
            radius: 10,
            onPressed: () => context.router.push(UpdateMajorsRoute()),
          ),
        ),
      ),
      body: loadable(
          error: state.error,
          loading: state.loading,
          builder: () {
            return Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, bottom: 24, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
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
                      const Spacer(),
                      CustomSearchBar(
                        items: _items,
                        onSearchItemTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manage Majors',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textBlueOriginal,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              padding: EdgeInsets.only(bottom: 24, top: 12),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                mainAxisExtent: 200,
                              ),
                              itemCount: state.majors.length,
                              itemBuilder: (BuildContext context, int index) {
                                final deleteKey = 'delete_$index';
                                final updateKey = 'update_$index';

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 138,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            state.majors[index].name ?? '',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.headline,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColors.lowActionContainerBorder,
                                              width: 1.5,
                                            ),
                                            color: AppColors.lowActionContainerBackground,
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              MouseRegion(
                                                onEnter: (_) => _manageMajorsCubit.updateHovering(
                                                    deleteKey, true),
                                                onExit: (_) => _manageMajorsCubit.updateHovering(
                                                    deleteKey, false),
                                                child: InkWell(
                                                  onTap: () => {},
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
                                                onEnter: (_) => _manageMajorsCubit.updateHovering(
                                                    updateKey, true),
                                                onExit: (_) => _manageMajorsCubit.updateHovering(
                                                    updateKey, false),
                                                child: InkWell(
                                                  onTap: () =>
                                                      context.router.push(UpdateMajorsRoute()),
                                                  onHover: (hovering) {},
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
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
