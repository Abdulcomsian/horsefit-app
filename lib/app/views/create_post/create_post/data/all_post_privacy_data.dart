import '../../../../../core/constants/exports.dart';

final allPostPrivacy = <SelectableOptionCardModel>[
  SelectableOptionCardModel(
    icon: ImagesResource.publicIcon,
    title: 'Public',
    subTitle: 'Everyone will be able to see you post',
    postPrivacy: PostPrivacy.public,
    isSelected: true,
  ),
  SelectableOptionCardModel(
    icon: ImagesResource.friendsAndFollowersIcon,
    title: 'Friends & Followers',
    subTitle: 'Your friends & followers on ${ConstantsResource.appName}',
    postPrivacy: PostPrivacy.friendAndFollowers,
    isSelected: true,
  ),
  SelectableOptionCardModel(
    icon: ImagesResource.friendsOnlyIcon,
    title: 'Friends only',
    subTitle: 'Your friends on HorseFit',
    postPrivacy: PostPrivacy.friendsOnly,
    isSelected: true,
  ),
  SelectableOptionCardModel(
    icon: ImagesResource.selectedFriendsIcon,
    title: 'Selected Friends',
    subTitle: 'Select which freind(s) will see your post',
    postPrivacy: PostPrivacy.selectedFriends,
    isSelected: true,
  ),
];
