import '../home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomAppBar(),
        elevation: 0,
        backgroundColor: const Color(0xffF8F5F2),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeGreeting(),
              SizeOfHeight(heights: 20.h),
              const IconLists(),
              SizeOfHeight(heights: 20.h),
              TitleWithSeeAll(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AllPromoView(),
                    ),
                  );
                },
                title: "Today's Promo",
                buttonText: "See All",
              ),
              SizeOfHeight(heights: 10.h),
              const TodayPromo()
            ],
          ),
        ),
      ),
    );
  }
}
