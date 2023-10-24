import '../checkout.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF8F5F2),
        leading: InkWell(
          onTap: (){
            // Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
          ),
        ),
        elevation: 0,
        title: Text(
          "Check Out",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizeOfHeight(heights: 15.0),
                const KeepSocialDistancing(),
                SizeOfHeight(heights: 15.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.w,right: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Bucket",
                        style: TextStyle(
                            fontSize: 27, color: CustomColors.headingTextColor),
                      ),
                      InkWell(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>AllPromos()));
                        },
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.red,)),
                            Text("Add Items", style: TextStyle(color: Colors.red),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizeOfHeight(heights: 15.0),
                SizedBox(
                    height: 200.h,
                    child: MyBucket()),
                SizeOfHeight(heights: 15.0),
                DeliverTo(),
                SizeOfHeight(heights: 15.0),
                Payment(),
              ],
            ),
          ),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const PlaceConfirmOrder()));
              },
              child: const CheckOut_Bottom())

        ],
      ),
    );
  }
}
