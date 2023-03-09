import 'package:event_calender_app/reusbale_widgets_constants.dart';
import 'package:flutter/material.dart';
import 'package:event_calender_app/details.dart';

// import 'package:event_calender_app/first_page.dart';
import 'package:event_calender_app/newpage.dart';
// import 'package:event_calender_app/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Marriage',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(),
                        ),
                      );
                    },
                  ),
                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Anniversary',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtherEvents(),
                        ),
                      );
                    },
                  ),
                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Seminar',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtherEvents(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              //kNFieldSizedBox,
              Row(
                children: [
                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Festive',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtherEvents(),
                        ),
                      );
                    },
                  ),
                  //  kWFieldSizedBox,

                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Birthday',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtherEvents(),
                        ),
                      );
                    },
                    // ),
                  ),
                  CategoriesButton(
                    color: Colors.white,
                    image: Image.asset('image/firstpage.jpg'),
                    label: 'Others',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtherEvents(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ButtonText(
                label: 'View All',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtherEvents(),
                    ),
                  );
                },
                textColor: Colors.black,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            height: 1,
                            width: width * 0.79,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Popular'),
                                      ),
                                      kNFieldSizedBox,
                                      Most(),
                                      kNFieldSizedBox,
                                      Most(),
                                      kNFieldSizedBox,
                                      Most(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Most extends StatelessWidget {
  const Most({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              'Hi',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
