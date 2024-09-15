import 'package:grouped_list/grouped_list.dart';

import '../../../../core/constants/exports.dart';

class WorkoutLogView extends StatelessWidget {
  const WorkoutLogView({super.key});

  @override
  Widget build(BuildContext context) {
    logger.i(DateTime.now().subtract(const Duration(days: 2)));

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              const UserProfileCardWidget(
                profileImgUrl: ConstantsResource.profileUrl,
                bannerImgUrl:
                    'https://plus.unsplash.com/premium_photo-1667595645105-469e12563830?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aG9yc2V8ZW58MHx8MHx8fDA%3D',
              ),
              SizedBox(height: 42.h),
              Flexible(
                child: GroupedListView<HorseProfile, DateTime>(
                  elements: horseProfiles,
                  groupBy: (horsePorfile) => horsePorfile.lastWorkout,
                  padding:
                      EdgeInsets.only(left: 92.ph, right: 92.ph, bottom: 72.pv),
                  physics: const BouncingScrollPhysics(),
                  order: GroupedListOrder.DESC,
                  groupSeparatorBuilder: (DateTime dateTime) => Padding(
                    padding: EdgeInsets.only(top: 92.pv, bottom: 48.pv),
                    child: TextViewWidget(
                      locator<Utils>()
                          .formatTimeDifference(dateTime.toString()),
                      style: textTheme.titleLarge,
                    ),
                  ),
                  itemBuilder: (context, horseProfile) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 48.h),
                      child:
                          HorseWorkoutLogCardWidget(horseProfile: horseProfile),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///! TODO Remove the code after testing
class HorseProfile {
  final String imageUrl;
  final String name;
  final DateTime lastWorkout;

  HorseProfile({
    required this.imageUrl,
    required this.name,
    required this.lastWorkout,
  });
}

List<HorseProfile> horseProfiles = [
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Maksi Royale',
    lastWorkout: DateTime.parse('2024-09-15 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Eos Marinka',
    lastWorkout: DateTime.parse('2024-09-14 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Perfect Tabac',
    lastWorkout: DateTime.parse('2024-09-14 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Mighty Storm',
    lastWorkout: DateTime.parse('2024-09-14 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Golden Glory',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Blue Horizon',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Starlight',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Black Beauty',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Thunderbolt',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
  HorseProfile(
    imageUrl: ConstantsResource.horseUrl,
    name: 'Silver Wind',
    lastWorkout: DateTime.parse('2024-09-10 02:02:12'),
  ),
];
