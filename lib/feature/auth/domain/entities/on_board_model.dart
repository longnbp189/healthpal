import 'package:healthpal/design/app_asset.dart';

class OnBoardModel {
  String image;
  String title;
  String discription;

  OnBoardModel(
      {required this.image, required this.title, required this.discription});
}

List<OnBoardModel> onBoardContent = [
  OnBoardModel(
      title: 'Meet Doctors Online',
      image: AppAsset.onBoard1,
      discription:
          "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations."),
  OnBoardModel(
      title: 'Connect with Specialists',
      image: AppAsset.onBoard2,
      discription:
          "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations."),
  OnBoardModel(
      title: 'Thousands of Online Specialists',
      image: AppAsset.onBoard3,
      discription:
          " Explore a Vast Array of Online Medical Specialists, Offering an Extensive Range of Expertise Tailored to Your Healthcare Needs."),
];
