import '../constants/exports.dart';

class BottomSheetUtils {
  Future<void> pickImageBottomSheet(
    context, {
    required Function(String file, List<String> files) uploadPickedMedia,
    bool isPickMulti = false,
    bool isPickVideo = false,
    VoidCallback? onClose,
  }) async =>
      await showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          isDismissible: false,
          builder: (BuildContext bc) => Wrap(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.only(
                        left: 24.ph, right: 62.ph, top: 32.pv, bottom: 24.pv),
                    child:
                        const Icon(Icons.close, color: AppColors.primaryColor),
                  ).centerRight().onTap(() {
                    if (onClose != null) onClose();
                    Navigator.pop(context);
                  }),
                  ListTile(
                      leading: Icon(Icons.photo_library,
                          color: Theme.of(context).primaryColor),
                      title: TextViewWidget(
                        'Photos/Gallery',
                        style: textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      onTap: () async {
                        AndroidDeviceInfo? deviceInfo;
                        if (Platform.isAndroid) {
                          deviceInfo = await DeviceInfoPlugin().androidInfo;
                        }
                        Navigator.pop(context);
                        await locator<Utils>()
                            .pickMedia(
                          context,
                          Platform.isAndroid
                              ? deviceInfo != null &&
                                      deviceInfo.version.sdkInt >= 32
                                  ? Permission.photos
                                  : Permission.storage
                              : Permission.photos,
                          ImageSource.gallery,
                          'Photos/Storage',
                          isPickMulti: isPickMulti,
                          isPickVideo: isPickVideo,
                        )
                            .then((pickedMedia) async {
                          await NetworkHandler.executeWithNetworkCheck(
                            context: context,
                            onlineAction: () async => uploadPickedMedia(
                                pickedMedia.$1, pickedMedia.$2),
                          );
                        });
                      }),
                  ListTile(
                      leading: Icon(Icons.photo_camera,
                          color: Theme.of(context).primaryColor),
                      title: TextViewWidget('Camera',
                          style: textTheme.headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w700)),
                      onTap: () async {
                        Navigator.pop(context);
                        locator<Utils>()
                            .pickMedia(
                          context,
                          Permission.camera,
                          ImageSource.camera,
                          'Camera',
                          isPickVideo: isPickVideo,
                        )
                            .then((pickedMedia) async {
                          await NetworkHandler.executeWithNetworkCheck(
                            context: context,
                            onlineAction: () async => uploadPickedMedia(
                                pickedMedia.$1, pickedMedia.$2),
                          );
                        });
                      }),
                ],
              ));
}
