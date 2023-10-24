import '../account.dart';


class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeController>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 24.sp,
              color: Color(0xFF3E4462),
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.light_mode))],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 40,
              left: 40,
              right: 40,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          'assets/IMG.JPG',
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.amber,
                      ),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sayed Nadim Uddin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "sayednadim29@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      side: BorderSide.none,
                      shape: StadiumBorder(),
                      shadowColor: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 120,
                      ),
                      width: 35,
                      height: 35,
                      child: Icon(
                        Icons.facebook,
                        color: Colors.indigo,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 35,
                      height: 35,
                      child: Icon(
                        Icons.email_outlined,
                         color: Colors.red,
                        size: 40,
                      ),
                      ),
                  ],
                ),
                // Row(
                //   children: [
                //     TextButton(
                //         onPressed: () {},
                //         child: Icon(
                //           Icons.facebook,
                //           size: 40,
                //           color: Colors.indigo,
                //         ),),
                //   ],
                // ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),

                //Menu
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.withOpacity(0.22)),
                      child: Icon(
                        Icons.payment,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Payment Methods",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.withOpacity(0.22)),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Address",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.withOpacity(0.22)),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    ),
                    title: const Text(
                      "Favorite Order",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.withOpacity(0.22)),
                      child: Icon(
                        Icons.event_note_sharp,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "My Order",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.withOpacity(0.22)),
                      child: Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
