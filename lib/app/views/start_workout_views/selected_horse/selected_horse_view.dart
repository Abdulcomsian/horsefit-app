import '../../../../core/constants/exports.dart';

class SelectedHorseView extends StatefulWidget {
  const SelectedHorseView({super.key});

  @override
  State<SelectedHorseView> createState() => _SelectedHorseViewState();
}

class _SelectedHorseViewState extends State<SelectedHorseView> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Start Workout'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 94.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 74.ph),
              child: const HorseProfileTileWidget(),
            ),
            SizedBox(height: 160.h),
            TextViewWidget('Select Workout Type', style: textTheme.titleLarge),
            SizedBox(height: 62.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 114.ph),
              child: BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.basicIcon,
                          text: '\nInterval',
                          isSelected:
                              state.workoutType == WorkoutTypeEnum.interval
                                  ? true
                                  : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutType(
                                  workoutType: WorkoutTypeEnum.interval)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.basicWorkoutIcon,
                          text: 'Basic\nWorkout',
                          isSelected:
                              state.workoutType == WorkoutTypeEnum.basicWorkout
                                  ? true
                                  : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutType(
                                  workoutType: WorkoutTypeEnum.basicWorkout)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.pressWagonIcon,
                          text: 'Press\nWagon',
                          isSelected:
                              state.workoutType == WorkoutTypeEnum.pressWagon
                                  ? true
                                  : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutType(
                                  workoutType: WorkoutTypeEnum.pressWagon)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 120.h),
            TextViewWidget('Select Terrain Type', style: textTheme.titleLarge),
            SizedBox(height: 62.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 114.ph),
              child: BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.flatIcon,
                          text: 'Flat\nTerrain',
                          isSelected:
                              state.terrainType == TerrainTypeEnum.flatTerrain
                                  ? true
                                  : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.terrainType(
                                  terrainType: TerrainTypeEnum.flatTerrain)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.hillIcon,
                          text: '\nHill',
                          isSelected: state.terrainType == TerrainTypeEnum.hill
                              ? true
                              : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.terrainType(
                                  terrainType: TerrainTypeEnum.hill)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.randomTerrainIcon,
                          text: 'Random\nTerrain',
                          isSelected:
                              state.terrainType == TerrainTypeEnum.randomTerrain
                                  ? true
                                  : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.terrainType(
                                  terrainType: TerrainTypeEnum.randomTerrain)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 120.h),
            TextViewWidget('Select Workout Intensity',
                style: textTheme.titleLarge),
            SizedBox(height: 62.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 114.ph),
              child: BlocBuilder<StartWorkoutBloc, StartWorkoutState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.recoveryIcon,
                          text: '\nRecovery',
                          isSelected: state.workoutIntensity ==
                                  WorkoutIntensityEnum.recovery
                              ? true
                              : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutIntensity(
                                  workoutIntensity:
                                      WorkoutIntensityEnum.recovery)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.normalIcon,
                          text: '\nNormal',
                          isSelected: state.workoutIntensity ==
                                  WorkoutIntensityEnum.normal
                              ? true
                              : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutIntensity(
                                  workoutIntensity:
                                      WorkoutIntensityEnum.normal)),
                        ),
                      ),
                      SizedBox(width: 44.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.hardIcon,
                          text: '\nHard',
                          isSelected: state.workoutIntensity ==
                                  WorkoutIntensityEnum.hard
                              ? true
                              : false,
                          onTap: () => context.read<StartWorkoutBloc>().add(
                              const StartWorkoutEvent.workoutIntensity(
                                  workoutIntensity: WorkoutIntensityEnum.hard)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 180.h),
            TextViewWidget('Select Max Pulse', style: textTheme.titleLarge),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 62.ph, vertical: 92.pv),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: AppColors.primaryColor,
                  valueIndicatorTextStyle: textTheme.headlineMedium?.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                  valueIndicatorColor: AppColors.primaryColor,
                ),
                child: Slider(
                  value: _value,
                  thumbColor: AppColors.primaryColor,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.grayColor,
                  max: 400,
                  divisions: 400,
                  label: _value.toStringAsFixed(0),
                  onChanged: (value) {
                    ///! TODO Move this logic to bloc
                    setState(() => _value = value);
                  },
                ),
              ),
            ),
            TextViewWidget('How to find max pulse',
                style: textTheme.titleLarge?.copyWith(
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                )),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 74.ph, vertical: 80.pv),
            child: Row(
              children: [
                Expanded(
                    child: ButtonWidget(
                  btnText: 'Previous',
                  color: Colors.transparent,
                  textColor: AppColors.darkColor,
                  onTap: () => context.pop(),
                )),
                Expanded(
                    child: ButtonWidget(
                  icon: SvgPictureAssetWidget(
                    ImagesResource.arrowForwardIcon,
                    size: 62.w,
                  ),
                  isShowIconLeading: false,
                  btnText: 'Next',
                  onTap: () =>
                      context.pushNamed(RouteNames.intervalSettingsView),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
