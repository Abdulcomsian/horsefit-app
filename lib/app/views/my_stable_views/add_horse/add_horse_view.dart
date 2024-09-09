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
        child: Column(
          children: [
            SizedBox(height: 72.h),
            const AvatarWidget(),
            SizedBox(height: 160.h),
            TextFormFieldWidget(
              controller: _horseNameController,
            ),
            SizedBox(height: 92.h),
            SizedBox(height: 92.h),
            SizedBox(height: 92.h),
            SizedBox(height: 92.h),
            SizedBox(height: 92.h),
            SizedBox(height: 92.h),
            SizedBox(height: 112.h),
          ],
        ),
      ),
    );
  }
}
