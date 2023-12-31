import '../home.dart';

class TodayPromo extends StatefulWidget {
  const TodayPromo({super.key});

  @override
  State<TodayPromo> createState() => _TodayPromoState();
}

class _TodayPromoState extends State<TodayPromo> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return SizedBox(
      height: 270.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemProvider.itemList.length,
          itemBuilder: (context, index){
            return Row(
              children: [
                DishItem(
                  onPress:(){
                    itemProvider.setIsFavorite(index);
                },
                  favorite : itemProvider.itemList[index]['isFavorite'],
                  dishImage: itemProvider.itemList[index]['item_pic'],
                  dishTitle: itemProvider.itemList[index]['item_name'],
                  dishSubTitle: itemProvider.itemList[index]['item_subname'],
                  dishPrice: itemProvider.itemList[index]['special_price'],
                  dishRegularPrice: itemProvider.itemList[index]['regular_price'],
                  dishLeft: itemProvider.itemList[index]['item_left'],
                ),
                SizedBox(width: 10,)
              ],
            );
          }
      ),
    );
  }
}
