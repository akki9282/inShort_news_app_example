// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:inshorts_news_app/controller/apiController.dart';
// import 'package:swipable_stack/swipable_stack.dart';

// class NewsPage extends StatefulWidget {
//   const NewsPage({super.key});

//   @override
//   State<NewsPage> createState() => _NewsPageState();
// }

// class _NewsPageState extends State<NewsPage> {
//   ApiController apiController = Get.put(ApiController());

//   getNews() async {
//     await ApiController().getNews(category: 'all');
//   }

//   late final SwipableStackController _controller;

//   void _listenController() => setState(() {});

//   @override
//   void initState() {
//     super.initState();
//     _controller = SwipableStackController()..addListener(_listenController);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller
//       ..removeListener(_listenController)
//       ..dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         backgroundColor: Color.fromARGB(255, 67, 67, 67),
//         width: MediaQuery.of(context).size.width * 0.6,
//         child: ListView(children: [
//           // const DrawerHeader(
//           //   // padding: EdgeInsets.all(0),
//           //   margin: EdgeInsets.all(5),
//           //   // decoration: BoxDecoration(
//           //   //   color: Colors.blue,
//           //   // ),
//           //   child: Text(
//           //     'Change Category',
//           //     style: TextStyle(
//           //         color: Colors.white,
//           //         fontSize: 20,
//           //         fontWeight: FontWeight.bold),
//           //   ),
//           // ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.newspaper_sharp,
//               color: Colors.white,
//             ),
//             title: Text(
//               'All',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.travel_explore,
//               color: Colors.white,
//             ),
//             title: Text(
//               'National',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.business,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Business',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.sports_cricket,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Sports',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.abc_rounded,
//               color: Colors.white,
//             ),
//             title: Text(
//               'World',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.account_balance_sharp,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Politics',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.mobile_friendly,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Technology',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.stacked_line_chart_sharp,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Startup',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.tv,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Entertainment',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.auto_awesome,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Miscellaneous',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.ads_click_outlined,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Hatke',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               size: 20,
//               Icons.science,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Science',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.garage,
//               color: Colors.white,
//             ),
//             title: Text(
//               'Automobile',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ]),
//       ),
//       appBar: AppBar(
//         title: Text('News'),
//         backgroundColor: const Color.fromARGB(255, 123, 123, 123),
//       ),
//       body: Stack(
//         children: [
//           Positioned.fill(
//               child: SwipableStack(
//             detectableSwipeDirections: {SwipeDirection.down, SwipeDirection.up},
//             controller: _controller,
//             builder: (context, swipeProperty) {},
//           ))
//         ],
//       ),
//     );
//   }
// }

// class SwipableStackController {}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

const _images = [
  'images/image_5.jpg',
  'images/image_3.jpg',
  'images/image_4.jpg',
];

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 67, 67, 67),
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView(children: [
          // const DrawerHeader(
          //   // padding: EdgeInsets.all(0),
          //   margin: EdgeInsets.all(5),
          //   // decoration: BoxDecoration(
          //   //   color: Colors.blue,
          //   // ),
          //   child: Text(
          //     'Change Category',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.newspaper_sharp,
              color: Colors.white,
            ),
            title: Text(
              'All',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.travel_explore,
              color: Colors.white,
            ),
            title: Text(
              'National',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.business,
              color: Colors.white,
            ),
            title: Text(
              'Business',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.sports_cricket,
              color: Colors.white,
            ),
            title: Text(
              'Sports',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.abc_rounded,
              color: Colors.white,
            ),
            title: Text(
              'World',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.account_balance_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Politics',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.mobile_friendly,
              color: Colors.white,
            ),
            title: Text(
              'Technology',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.stacked_line_chart_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Startup',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.tv,
              color: Colors.white,
            ),
            title: Text(
              'Entertainment',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.auto_awesome,
              color: Colors.white,
            ),
            title: Text(
              'Miscellaneous',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.ads_click_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Hatke',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              size: 20,
              Icons.science,
              color: Colors.white,
            ),
            title: Text(
              'Science',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.garage,
              color: Colors.white,
            ),
            title: Text(
              'Automobile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: const Color.fromARGB(255, 123, 123, 123),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SwipableStack(
                  detectableSwipeDirections: const {
                    SwipeDirection.right,
                    SwipeDirection.left,
                  },
                  controller: _controller,
                  stackClipBehaviour: Clip.none,
                  onSwipeCompleted: (index, direction) {
                    if (kDebugMode) {
                      print('$index, $direction');
                    }
                  },
                  horizontalSwipeThreshold: 0.8,
                  verticalSwipeThreshold: 0.8,
                  builder: (context, properties) {
                    final itemIndex = properties.index % _images.length;

                    return Stack(
                      children: [
                        Container(
                          child: Text('hello'),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            // BottomButtonsRow(
            //   onSwipe: (direction) {
            //     _controller.next(swipeDirection: direction);
            //   },
            //   onRewindTap: _controller.rewind,
            //   canRewind: _controller.canRewind,
            // ),
          ],
        ),
      ),
    );
  }
}
