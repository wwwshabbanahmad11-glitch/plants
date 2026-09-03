import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
class Service  extends GetxService{
  List<String> messages = [
    "🌱 اكتشف فوائد الزنجبيل لصحة الجسم.",
    "🌿 تعرف على فوائد النعناع في تحسين الهضم.",
    "🍂 هل جربت القرفة؟ إنها غنية بمضادات الأكسدة.",
    "🌼 البابونج يساعد على الاسترخاء والنوم الهادئ.",
    "🍃 الريحان نبات عطري له فوائد صحية عديدة.",
    "🌸 اللافندر يساهم في تهدئة الأعصاب وتقليل التوتر.",
    "🌿 الكركم معروف بخصائصه المضادة للالتهابات.",
    "🍀 الزعتر يدعم صحة الجهاز التنفسي.",
    "🌱 الصبار مفيد للعناية بالبشرة وترطيبها.",
    "🌼 الشاي الأخضر غني بمضادات الأكسدة الطبيعية.",
    "🍃 إكليل الجبل قد يساعد على تحسين الذاكرة.",
    "🌿 الميرمية من الأعشاب المفيدة لصحة الجسم.",
    "🌱 لا تنسَ شرب الماء مع استخدام الأعشاب الطبية.",
    "🍀 تعرف اليوم على نبات طبي جديد في التطبيق.",
    "🌸 لكل نبات فوائد، اكتشفها معنا.",
    "🌿 النباتات الطبية كنز من الطبيعة، تعرّف عليها.",
    "🍃 معلومة اليوم: بعض الأعشاب تساعد في تقوية المناعة.",
    "🌱 خصص دقائق يوميًا لتعلم فائدة نبات جديد.",
    "🌼 الطبيعة مليئة بالعلاجات، اكتشفها مع تطبيقنا.",
    "🍀 رحلة معرفتك بالنباتات تبدأ من هنا."
  ];
  
    Future<Service> init_notification() async {

    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic Notifications',
          channelDescription: 'Basic notification channel',
          importance: NotificationImportance.High,
        ),
      ],
      debug: true,
    );

 //await AwesomeNotifications().cancelAllSchedules();
    bool allowed =
    await AwesomeNotifications().isNotificationAllowed();

    if (!allowed) {
      await AwesomeNotifications()
          .requestPermissionToSendNotifications();
    }

    await AwesomeNotifications().createNotification(

      content: NotificationContent(
         icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 1,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[1] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 1,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 5,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[5] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 5,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 6,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[6] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 6,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 12,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[12] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 12,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 13,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[13] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 13,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 14,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[14] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 14,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 15,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[15] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 15,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 16,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[16] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 16,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 8,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[8] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 8,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 9,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[9] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 9,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(

      content: NotificationContent(
        icon: 'resource://drawable/icon',
        actionType: ActionType.Default,
        id: 10,
        channelKey: 'basic_channel',
        title: 'نبتة 🌱',
        body:messages[10] ,
      ),
      schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 10,
        repeats: true,
      ),
    );
    await AwesomeNotifications().createNotification(content: NotificationContent(
        id: 2, channelKey: 'basic_channel',
        title: "صباح الخير 🌱",
        body:   "إكتشف فوائد النباتات مع أحمد 🍂",
        actionType:  ActionType.Default,
      icon: 'resource://drawable/icon',
    ),schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
      hour: 7,
      minute: 0,second: 0,
      repeats: true
    ));
    await AwesomeNotifications().createNotification(content: NotificationContent(
       icon: 'resource://drawable/icon',
      id: 3, channelKey: 'basic_channel',
      title: "مساء الخير 🌱",
      body:  '"تعرف على فوائد النباتات 🌿 مع أحمد',
     actionType: ActionType.Default

    ),schedule: NotificationCalendar(
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
        hour: 20,
        minute: 0,second: 0,
        repeats: true
    ));
    return this;
  }


}

 service_init(){
  Get.putAsync(()=>Service().init_notification());
}