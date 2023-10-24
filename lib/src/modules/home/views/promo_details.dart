import '../home.dart';

class PromoDetails extends StatefulWidget {
  const PromoDetails({super.key});

  @override
  State<PromoDetails> createState() => _PromoDetailsState();
}

class _PromoDetailsState extends State<PromoDetails> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: [
            const PromoDetailsTopView(),
            SizeOfHeight(heights: 100.h),
            PromoDetailsTab()
          ],
        ) ,
      ) ,
    );
  }
}
