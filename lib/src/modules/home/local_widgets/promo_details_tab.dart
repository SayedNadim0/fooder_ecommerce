import '../home.dart';

class PromoDetailsTab extends StatefulWidget {
  const PromoDetailsTab({super.key});

  @override
  State<PromoDetailsTab> createState() => _PromoDetailsTabState();
}

class _PromoDetailsTabState extends State<PromoDetailsTab>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                "Review",
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ),
            Tab(
                child: Text(
                  "Info",
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                )),
          ],
        ),
        SizedBox(
          height: 1.sh,
          child: TabBarView(
            controller: _tabController,
            children: [
              PromoDetailsReview(),
              PromoDetailsInfo()
            ],
          ),
        ),
      ],
    );
  }
}
