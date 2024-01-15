import 'package:communication_client/app/presentation/components/app_image_widget.dart';
import 'package:communication_client/app/utils/constants/app_constants.dart';
import 'package:communication_client/app/utils/transition/fade_transition.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/material.dart';

class ItemAvatar extends StatefulWidget {
  final UserEntity? user;
  const ItemAvatar({
    super.key,
    required this.user,
  });

  @override
  State<ItemAvatar> createState() => _ItemAvatarState();
}

class _ItemAvatarState extends State<ItemAvatar> {
  String temporaryAvatar =
      'https://img.freepik.com/premium-psd/3d-cartoon-man-smiling-portrait-isolated-transparent-background-png-psd_888962-1570.jpg';
  //TODO delete temporaryAvatar
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Avatar
        Stack(
          children: [
            widget.user?.avatarUrl == null ||
                    widget.user?.avatarUrl == '' //TODO changed !=
                ? CircleAvatar(
                    radius: 60,
                    //backgroundColor: ColorApp.blueButton,
                    child: ClipOval(
                      child: AppImageWidget(
                        url:
                            temporaryAvatar, // "${locator.get<AppConfig>().apiUrl}/${widget.user?.avatarUrl}",
                        height: 330,
                        width: 330,
                      ),

                      //     Image.network(
                      //   temporaryAvatar,
                      //   fit: BoxFit.cover,
                      //   cacheWidth: 330,
                      //   cacheHeight: 330,
                      //   // height: 88,
                      //   alignment: Alignment.center,
                      //   filterQuality: FilterQuality.high,
                      //   errorBuilder: (context, error, stackTrace) {
                      //     return Image.asset('assets/images/raster/avatar.png');
                      //   },
                      // ),

                      // UserCacheImage(
                      //   maxHeightDiskCache: 330,
                      //   maxWidthDiskCache: 330,
                      //   asset: 'assets/images/raster/avatar.png',
                      //   imageUrl: '${ApiPath.baseUrl}/${_user.avatarUrl}',
                      // ),
                    ),
                  )
                : CircleAvatar(
                    radius: 60,
                    backgroundColor: ColorApp.blueButton,
                    child: Text(
                      widget.user?.userName != null
                          ? widget.user!.userName!.substring(0, 1).toUpperCase()
                          : 'G',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: Font.inter,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
            Positioned(
              bottom: 5,
              right: 5,
              child: GestureDetector(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        // color: Colors.grey[400],
                        color: ColorApp.backgroundLight,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: const Icon(
                      // Icons.camera_alt_outlined,
                      Icons.add_a_photo_outlined,
                      color: ColorApp.backgroundIcon2,
                      size: 15,
                    ),
                  ),
                  onTap: () async {
                    // var cameras = await availableCameras();
                    // // await initCamera(cameras[1]);
                    // AppBottomSheet.showButtomSheet(
                    //     context: context,
                    //     isWrapContent: true,
                    //     isExpanded: false,
                    //     isBlurBackground: true,
                    //     enableDrag: false,
                    //     colorButtomSheet: ColorApp.backgroundLight,
                    //     child: ChoiceAvatar(cameras: cameras)
                    //     // Container(
                    //     //   height: 200,
                    //     //   color: Colors.green,
                    //     // ),
                    //     );
                  }),
            ),
          ],
        ),
        //Name
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user?.firstname ?? '',
                style: const TextStyle(
                  fontFamily: Font.inter,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: ColorApp.textBodyDark,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3),
                child: Text(
                  widget.user?.surname ?? '',
                  style: const TextStyle(
                    fontFamily: Font.inter,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: ColorApp.textBodyDark,
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context, FadeRoute(page: const EditingPassword()));
                  },
                  child: const Text(
                    'Сменить пароль',
                    style: TextStyle(
                      fontFamily: Font.inter,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorApp.backgroundIcon2,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
