import '../constants/exports.dart';

class SvgUtils {
  static List<String> allSvgs = [];

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
