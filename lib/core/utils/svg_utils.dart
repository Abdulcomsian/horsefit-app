import '../constants/exports.dart';

class SvgUtils {
  static List<String> allSvgs = [
    ImagesResource.appleIcon,
    ImagesResource.arrowBackIcon,
    ImagesResource.calendarIcon,
    ImagesResource.cameraIcon,
    ImagesResource.emailIcon,
    ImagesResource.emojiNormalIcon,
    ImagesResource.facebookIcon,
    ImagesResource.femaleIcon,
    ImagesResource.googleIcon,
    ImagesResource.horseOwnerIcon,
    ImagesResource.horseTrainerIcon,
    ImagesResource.lockIcon,
    ImagesResource.logoIcon,
    ImagesResource.lostPasswordLockIcon,
    ImagesResource.maleIcon,
    ImagesResource.profileIcon,
    ImagesResource.visibilityIcon,
    ImagesResource.whiteLogoIcon,
  ];

  static Future<void> preCacheSVGs() async {
    for (final path in allSvgs) {
      final loadSvg = SvgAssetLoader(path);
      await svg.cache.putIfAbsent(
        loadSvg.cacheKey(null),
        () => loadSvg.loadBytes(null),
      );
    }
  }
}
