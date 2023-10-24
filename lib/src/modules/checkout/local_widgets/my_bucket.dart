import '../checkout.dart';

class MyBucket extends StatefulWidget {

  MyBucket({ super.key});

  @override
  State<MyBucket> createState() => _MyBucketState();
}

class _MyBucketState extends State<MyBucket> {
  @override
  Widget build(BuildContext context) {
    final itemList = Provider.of<HomeController>(context);
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => Text(""),);
  }
}
