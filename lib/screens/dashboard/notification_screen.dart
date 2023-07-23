import 'package:bustick/utils/colors.dart';
import 'package:bustick/utils/strings.dart';
import 'package:bustick/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import 'package:bustick/utils/dimensions.dart';
import 'package:bustick/data/notifications.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              HeaderWidget(title: Strings.notifications,),
              bodyWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  bodyWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: NotificationList.list().length,
          itemBuilder: (context, index) {
            Notifications notification = NotificationList.list()[index];
            return Padding(
              padding: const EdgeInsets.only(
                  bottom: 5,
                left: Dimensions.marginSize,
                right: Dimensions.marginSize,
              ),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                    boxShadow: [
                      BoxShadow(
                        color: CustomColor.primaryColor.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                      top: Dimensions.heightSize,
                      bottom: Dimensions.heightSize,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: Dimensions.widthSize,),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          notification.title,
                                          style: TextStyle(
                                              fontSize: Dimensions.largeTextSize,
                                              color: Colors.black
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.heightSize * 0.5,),
                                    Text(
                                      notification.subTitle,
                                      style: TextStyle(
                                          fontSize: Dimensions.smallTextSize,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: Dimensions.widthSize,),
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                notification.time,
                                style: TextStyle(
                                  color: CustomColor.greyColor
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {

                },
              ),
            );
          },
        ),
      ),
    );
  }
}
