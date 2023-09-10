import 'package:legalease/consts/consts.dart';
import 'package:legalease/views/app_screens/lawyerinfo.dart';
import 'package:legalease/views/widgets_common/profiletile.dart';
import 'package:legalease/views/widgets_common/search.dart';

class lawyerData extends StatelessWidget {
  const lawyerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              10.heightBox,
              searchBar(hint: "search for a lawyer"),
              10.heightBox,
              profileTile(
                img: icperson1,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson1,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson1,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson2,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson3,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson1,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson2,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson3,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson1,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson2,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
              profileTile(
                img: icperson3,
                title: "Dr. Bibhuti Bhusan",
                detail: "phd. from xyz, jhds kdhslk kjhg ...",
                num: 50,
                star: 4.6,
              ).onTap(() {
                Get.to(() => const LawyerProfile());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
