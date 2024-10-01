import 'package:country_picker/country_picker.dart';
import 'package:horse_fit/app/view_models/add_horse/add_horse_bloc.dart';

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
                child: BlocBuilder<AddHorseBloc, AddHorseState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Trotting',
                          isSelected:
                              state.horseActivity == HorseActivityEnum.trotting
                                  ? true
                                  : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseActivity(
                                  horseActivity: HorseActivityEnum.trotting)),
                        ),
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Riding',
                          isSelected:
                              state.horseActivity == HorseActivityEnum.riding
                                  ? true
                                  : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseActivity(
                                  horseActivity: HorseActivityEnum.riding)),
                        ),
                      ],
                    );
                  },
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
              ).onTap(() => showCountryPicker(
                    context: context,
                    onSelect: (Country country) {
                      _nationalityController.text =
                          country.displayNameNoCountryCode;
                      setState(() {});
                    },
                  )),
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
              ).onTap(() {
                locator<DialogueUtils>()
                    .openDatePicker(context)
                    .then((dateOfBirth) {
                  ///! TODO Move this logic to bloc
                  if (dateOfBirth != null) {
                    _dobController.text = dateOfBirth;
                    setState(() {});
                  }
                });
              }),
              SizedBox(height: 92.h),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
                decoration: BoxDecoration(
                  color: AppColors.grayColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: BlocBuilder<AddHorseBloc, AddHorseState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Mare',
                          isSelected: state.horseGender == HorseGenderEnum.mare
                              ? true
                              : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseGender(
                                  horseGender: HorseGenderEnum.mare)),
                        ),
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Stallion',
                          isSelected:
                              state.horseGender == HorseGenderEnum.stallion
                                  ? true
                                  : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseGender(
                                  horseGender: HorseGenderEnum.stallion)),
                        ),
                      ],
                    );
                  },
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
                child: BlocBuilder<AddHorseBloc, AddHorseState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Warm blooded',
                          isSelected:
                              state.horseType == HorseTypeEnum.warmBlooded
                                  ? true
                                  : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseType(
                                  horseType: HorseTypeEnum.warmBlooded)),
                        ),
                        ToggleSelectionButtonWidget(
                          icon: ImagesResource.checkIcon,
                          btnText: 'Cold blooded',
                          isSelected:
                              state.horseType == HorseTypeEnum.coldBlooded
                                  ? true
                                  : false,
                          onTap: () => context.read<AddHorseBloc>().add(
                              const AddHorseEvent.horseType(
                                  horseType: HorseTypeEnum.coldBlooded)),
                        ),
                      ],
                    );
                  },
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
                onTap: () => context.pop(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
