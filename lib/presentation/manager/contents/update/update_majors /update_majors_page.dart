import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_state.dart';

@RoutePage()
class UpdateMajorsPage
    extends BasePage<UpdateMajorsCubit, UpdateMajorsBuildable, UpdateMajorsListenable> {
  UpdateMajorsPage({super.key});

  late final UpdateMajorsCubit _majorsCubit;
  @override
  void init(BuildContext context) {
    _majorsCubit = context.read<UpdateMajorsCubit>();
    super.init(context);
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
  Widget builder(BuildContext context, UpdateMajorsBuildable state) {
    final fixedWidth = context.width * 0.35;

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
        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.window,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.dottedBorder,
                      blurRadius: 16,
                      offset: Offset(1, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: fixedWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary,
                        image: DecorationImage(
                          image: MemoryImage(
                            base64Decode(_majorsCubit.buildable.majors.photo ?? ''),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: fixedWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Major name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.headline,
                            ),
                          ),
                          const SizedBox(height: 4),
                          CommonTextField(
                            hint: 'Enter Major Name',
                            borderRadius: 10,
                            onChanged: (value) {
                              _majorsCubit.updateMajorModel(name: value);
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 42),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Photo here',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.headline,
                          ),
                        ),
                        const SizedBox(height: 4),
                        InkWell(
                          onTap: () async {},
                          child: SizedBox(
                            height: 130,
                            width: fixedWidth,
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
                                    state.uploadLoading
                                        ? const CircularProgressIndicator.adaptive()
                                        : Assets.svgs.download.svg(),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Upload file here',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 62),
                    SizedBox(
                      width: 200,
                      height: 48,
                      child: CommonButton.elevated(
                        loading: state.loading,
                        backgroundColor: AppColors.blueOriginal,
                        text: 'Save changes',
                        onPressed: () async {
                          final result = _majorsCubit.checkMajorFields();
                          log(state.majors.toString());
                          if (result.isEmpty) {
                            await _majorsCubit.addMajor();
                          } else {
                            ResultNotifier(context: context, message: result).showError();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
