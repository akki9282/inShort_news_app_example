import 'package:another_transformer_page_view/another_transformer_page_view.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts_news_app/screen/bookmark_news.dart';
import 'package:inshorts_news_app/screen/read_more_webview.dart';

import 'package:swipable_stack/swipable_stack.dart';

import '../controller/news_controller.dart';
import '../model/news_model.dart';
import 'dart:math' as Math;

const _images = [Colors.orange, Colors.red, Colors.blue];

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  IndexController pageController = IndexController();
  NewsController newsController = Get.put(NewsController());

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData();
    });
    super.initState();
  }

  void getData() async {
    await newsController.getNews(category: 'national');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 67, 67, 67),
          // width: MediaQuery.of(context).size.width * 0.6,
          child: ListView(children: [
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                // apiController.newsModel?.value = null;
                pageController.move(0);
                await newsController.getNews(category: 'all');
              },
              leading: const Icon(
                size: 20,
                Icons.newspaper_sharp,
                color: Colors.white,
              ),
              title: const Text(
                'All',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'national');
              },
              leading: const Icon(
                size: 20,
                Icons.travel_explore,
                color: Colors.white,
              ),
              title: const Text(
                'National',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'business');
              },
              leading: const Icon(
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'sports');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'world');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'politics');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'technology');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'startup');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'entertainment');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'miscellaneous');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'hatke');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'science');
              },
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
              onTap: () async {
                Navigator.pop(context);
                pageController.move(0);
                // apiController.newsModel?.value = null;
                await newsController.getNews(category: 'automobile');
              },
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
            ListTile(
              onTap: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => BookmarkNews()));
              },
              leading: const Icon(
                size: 20,
                Icons.bookmark,
                color: Colors.white,
              ),
              title: const Text(
                'Bookmark',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          title: Obx(
            () => Text(
                '${(newsController.newsModel?.value?.category ?? '').capitalizeFirst} News'),
          ),
          backgroundColor: const Color.fromARGB(255, 123, 123, 123),
        ),
        body: SafeArea(child: Obx(() {
          return newsController.newsModel?.value == null
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : TransformerPageView(
                  scrollDirection: Axis.vertical,
                  itemCount: newsController.newsModel?.value?.data?.length ?? 0,
                  loop: false,
                  controller: pageController,
                  transformer: DeepthPageTransformer(),
                  itemBuilder: (context, index) {
                    return Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(),
                        //     borderRadius: BorderRadius.circular(5)),
                        child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: double.infinity,
                          child: Image.network(
                              errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                                'assets/course_not_found_icon.png');
                          }, loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                              fit: BoxFit.cover,
                              newsController.newsModel?.value?.data?[index]
                                      .imageUrl ??
                                  ''),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            child: Column(children: [
                              Text(
                                '${newsController.newsModel?.value?.data?[index].title ?? ''}',
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                // height: ((MediaQuery.of(context).size.height) -
                                //         MediaQuery.of(context).size.height *
                                //             0.35) *
                                //     0.5,
                                child: Text(
                                  softWrap: true,
                                  '${(newsController.newsModel?.value?.data?[index].content ?? '')}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 1,
                                      wordSpacing: 2),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      ReadMoreWebview(
                                                          url: newsController
                                                              .newsModel
                                                              ?.value
                                                              ?.data?[index]
                                                              .readMoreUrl)));
                                        },
                                        child: Text('Read More')),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          await newsController.addBookmarkNews(
                                              title: newsController
                                                      .newsModel
                                                      ?.value
                                                      ?.data?[index]
                                                      .title ??
                                                  '',
                                              content: newsController
                                                      .newsModel
                                                      ?.value
                                                      ?.data?[index]
                                                      .content ??
                                                  '',
                                              imageUrl: newsController
                                                      .newsModel
                                                      ?.value
                                                      ?.data?[index]
                                                      .imageUrl ??
                                                  '',
                                              id: newsController
                                                      .newsModel
                                                      ?.value
                                                      ?.data?[index]
                                                      .id ??
                                                  '',
                                              readMoreUrl: newsController
                                                      .newsModel
                                                      ?.value
                                                      ?.data?[index]
                                                      .readMoreUrl ??
                                                  '');
                                        },
                                        child: Icon(
                                          Icons.bookmark_add_sharp,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        )
                      ],
                    ));
                  },
                );
        })));
  }
}

class DeepthPageTransformer extends PageTransformer {
  static const double MIN_SCALE = 0.85;
  static const double MIN_ALPHA = 0.5;

  @override
  Widget transform(Widget child, TransformInfo info) {
    double position = info.position ?? 0;
    double pageWidth = info.width ?? 0;
    double pageHeight = info.height ?? 0;

    if (position < -1) {
      // [-Infinity,-1)
      // This page is way off-screen to the left.
      //view.setAlpha(0);
    } else if (position <= 1) {
      // [-1,1]
      // Modify the default slide transition to
      // shrink the page as well
      double scaleFactor = Math.max(MIN_SCALE, 1 - position.abs());
      double vertMargin = pageHeight * (1 - scaleFactor) / 2;
      double horzMargin = pageWidth * (1 - scaleFactor) / 2;
      double dx;
      if (position < 0) {
        dx = (horzMargin - vertMargin / 2);
      } else {
        dx = (-horzMargin + vertMargin / 2);
      }
      // Scale the page down (between MIN_SCALE and 1)
      double opacity = MIN_ALPHA +
          (scaleFactor - MIN_SCALE) / (1 - MIN_SCALE) * (1 - MIN_ALPHA);

      return Opacity(
        opacity: opacity,
        child: Transform.translate(
          offset: Offset(dx, 0.0),
          child: Transform.scale(
            scale: scaleFactor,
            child: child,
          ),
        ),
      );
    } else {
      // (1,+Infinity]
      // This page is way off-screen to the right.
      // view.setAlpha(0);
    }

    return child;
  }
}
