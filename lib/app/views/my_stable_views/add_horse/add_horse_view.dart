import 'package:horse_fit/app/views/my_stable_views/add_horse/components/toggle_selection_button_widget.dart';

import '../../../../core/constants/exports.dart';

class AddHorseView extends StatefulWidget {
  const AddHorseView({super.key});

  @override
  State<AddHorseView> createState() => _AddHorseViewState();
}

class _AddHorseViewState extends State<AddHorseView> {
  late final TextEditingController _horseNameController;
  late final TextEditingController _nationalityController;
  late final TextEditingController _dobController;
  late final TextEditingController _horseFatherNameController;
  late final TextEditingController _horseMotherNameController;

  @override
  void initState() {
    _horseNameController = TextEditingController();
    _nationalityController = TextEditingController();
    _dobController = TextEditingController();
    _horseFatherNameController = TextEditingController();
    _horseMotherNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _horseNameController.dispose();
    _nationalityController.dispose();
    _dobController.dispose();
    _horseFatherNameController.dispose();
    _horseMotherNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add Horse'),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 120.ph, vertical: 62.pv),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const AvatarWidget(),
              SizedBox(height: 160.h),
              TextFormFieldWidget(
                controller: _horseNameController,
                hintText: 'Name of horse',
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.ph),
                  child: SvgPictureAssetWidget(ImagesResource.horseNameIcon,
                      size: 82.w),
                ),
              ),
              SizedBox(height: 92.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Row(
                  children: [
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Trotting',
                      isSelected: true,
                      // state.gender == Gender.male ? true : false,
                      onTap: () {},
                    ),
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Riding',
                      isSelected: false,
                      // state.gender == Gender.female ? true : false,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 92.h),
              TextFormFieldWidget(
                controller: _nationalityController,
                hintText: 'Nationality',
                enabled: false,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(42.ph),
                  child: SvgPictureAssetWidget(ImagesResource.arrowDownIcon,
                      size: 40.w),
                ),
              ),
              SizedBox(height: 92.h),
              TextFormFieldWidget(
                controller: _dobController,
                hintText: 'Date of Birth',
                enabled: false,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(42.ph),
                  child: SvgPictureAssetWidget(ImagesResource.calendarIcon,
                      size: 86.w),
                ),
              ),
              SizedBox(height: 92.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Row(
                  children: [
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Mare',
                      isSelected: false,
                      // state.gender == Gender.male ? true : false,
                      onTap: () {},
                    ),
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Stallion',
                      isSelected: true,
                      // state.gender == Gender.female ? true : false,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 92.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Row(
                  children: [
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Warm blooded',
                      isSelected: true,
                      // state.gender == Gender.male ? true : false,
                      onTap: () {},
                    ),
                    ToggleSelectionButtonWidget(
                      icon: ImagesResource.checkIcon,
                      btnText: 'Cold blooded',
                      isSelected: false,
                      // state.gender == Gender.female ? true : false,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 92.h),
              TextFormFieldWidget(
                controller: _horseFatherNameController,
                hintText: 'Name of Father horse',
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.ph),
                  child: SvgPictureAssetWidget(
                      ImagesResource.horseFatherNameIcon,
                      size: 82.w),
                ),
              ),
              SizedBox(height: 92.h),
              TextFormFieldWidget(
                controller: _horseMotherNameController,
                hintText: 'Name of Mother horse',
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.ph),
                  child: SvgPictureAssetWidget(
                      ImagesResource.horseMotherNameIcon,
                      size: 88.w),
                ),
              ),
              SizedBox(height: 112.h),
              ButtonWidget(
                btnText: 'Save',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
