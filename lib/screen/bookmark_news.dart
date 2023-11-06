import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/news_controller.dart';
import 'home_screen.dart';

class BookmarkNews extends StatefulWidget {
  const BookmarkNews({super.key});

  @override
  State<BookmarkNews> createState() => _BookmarkNewsState();
}

class _BookmarkNewsState extends State<BookmarkNews> {
  NewsController newsController = Get.put(NewsController());
  IndexController pageController = IndexController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getBookmarkNews();
    });

    super.initState();
  }

  getBookmarkNews() async {
    await newsController.getBookmarkNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bookmark'),
          backgroundColor: const Color.fromARGB(255, 123, 123, 123),
        ),
        body: SafeArea(
          child: Obx(
            () {
              return newsController.isBookmarkLoader.value
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : newsController.bookmarkNews.isEmpty
                      ? Center(
                          child: const Text(
                          'You have not bookmark any news',
                          style: TextStyle(fontSize: 20),
                        ))
                      : TransformerPageView(
                          scrollDirection: Axis.vertical,
                          itemCount: newsController.bookmarkNews?.length ?? 0,
                          loop: false,
                          controller: pageController,
                          transformer: DeepthPageTransformer(),
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    width: double.infinity,
                                    child: Image.memory(
                                      frameBuilder: (context, child, frame,
                                          wasSynchronouslyLoaded) {
                                        if (wasSynchronouslyLoaded)
                                          return child;
                                        return frame != null
                                            ? child
                                            : AnimatedSwitcher(
                                                duration: const Duration(
                                                    milliseconds: 200),
                                                child: SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              );

                                        //   if (wasSynchronouslyLoaded) {
                                        //     return child;
                                        //   } else {
                                        //     return Center(
                                        //       child: CircularProgressIndicator(
                                        //         color: Colors.black,
                                        //       ),
                                        //     );
                                        //   }
                                      },
                                      fit: BoxFit.cover,
                                      Uint8List.fromList(newsController
                                          .bookmarkNews?[index].image),
                                    ),
                                    // Image.network(errorBuilder:
                                    //         (context, error, stackTrace) {
                                    //   return Image.asset(
                                    //       'assets/course_not_found_icon.png');
                                    // }, loadingBuilder:
                                    //         (context, child, loadingProgress) {
                                    //   if (loadingProgress == null) return child;
                                    //   return Center(
                                    //     child: CircularProgressIndicator(
                                    //       color: Colors.black,
                                    //       value: loadingProgress
                                    //                   .expectedTotalBytes !=
                                    //               null
                                    //           ? loadingProgress
                                    //                   .cumulativeBytesLoaded /
                                    //               loadingProgress
                                    //                   .expectedTotalBytes!
                                    //           : null,
                                    //     ),
                                    //   );
                                    // },
                                    //     fit: BoxFit.cover,
                                    //     (newsController.bookmarkNews?[index]
                                    //                 .image_url)
                                    //             .toString() ??
                                    //         ''),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    child: Column(children: [
                                      Text(
                                        '${newsController.bookmarkNews?[index].title ?? ''}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        softWrap: true,
                                        '${(newsController.bookmarkNews?[index].content ?? '')}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            wordSpacing: 2),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: GestureDetector(
                                            onTap: () async {
                                              await newsController
                                                  .deletBookmarkNews(
                                                      newsController
                                                              .bookmarkNews?[
                                                                  index]
                                                              .id ??
                                                          '');
                                              await newsController
                                                  .getBookmarkNews();
                                            },
                                            child: Icon(
                                              Icons.bookmark_remove_rounded,
                                              size: 25,
                                            ),
                                          ))
                                    ]),
                                  )
                                ],
                              ),
                            );
                          },
                        );
            },
          ),
        ));
  }
}
