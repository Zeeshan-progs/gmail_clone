import 'dart:math';

class Info {
  final String logo;
  final String title;
  final String description;
  final String time;
  bool isStared;
  final String userName;
  final String mailId;
  bool isSubscribe;
  Info({
    this.logo,
    this.title,
    this.description,
    this.time,
    this.isStared,
    this.isSubscribe,
    this.mailId,
    this.userName,
  });
}

List<Info> infoList = [
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '11:16 AM',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '11:16 AM',
  ),
  Info(
    userName: 'Quora Digest',
    mailId: 'noreply@quora.com',
    title:
        '17 LPA from Nagarro vs 16 LPA from TCS? Which is better company to join as a salesfor ',
    description:
        '17 LPA from Nagarro vs 16 LPA from TCS? Which is better comp Nagarro vs 16 LPA from TCS? Which is better comp Nagarro vs 16 LPA from TCS? Which is better comp Nagarro vs 16 LPA from TCS? Which is better comp Nagarro vs 16 LPA from TCS? Which is better company to join as a salesfor',
    isSubscribe: true,
    isStared: false,
    logo: 'images/photo-11.jpeg',
    time: '1:16 PM',
  ),
  Info(
    userName: 'NoticeBard ',
    mailId: '@noticeboards.com',
    title: 'Jobs, internships and opportunities right in your inbox, daily! ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: '',
    time: '02:16 PM',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '11:16 AM',
  ),
  Info(
    userName: 'Flipkart',
    mailId: 'flipkart.com',
    title: 'Buy during Sale, PAY LATER! ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-9.jpeg',
    time: '1:16 AM',
  ),
  Info(
    userName: 'Swiggy',
    mailId: 'swiggy.com',
    title: '👇 Just an email that won’t make you go 😖 | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-6.jpg',
    time: '08:06 AM',
  ),
  Info(
    userName: 'Learn With EDX',
    mailId: 'edxLearn.com',
    title: 'Did you know this career is future proof?| ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: '',
    time: '07:34 AM',
  ),
  Info(
    userName: 'IBM Dummy Text ',
    mailId: 'ibm.com',
    title: 'Get Your chance in IBM ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-4.png',
    time: '11:56 PM',
  ),
  Info(
    userName: 'Codecademy',
    mailId: 'codecademy.com',
    title: 'We\'d love to hear from you',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: '',
    time: '${Random().nextInt(12)} : ${Random().nextInt(59)} AM',
  ),
  Info(
    userName: 'Youtube',
    mailId: 'youtube.com',
    title: 'Your channel performance last month ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: true,
    isStared: false,
    logo: '',
    time: '${Random().nextInt(12)} : ${Random().nextInt(59)} AM',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '${Random().nextInt(24)} : ${Random().nextInt(59)}',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '${Random().nextInt(24)} : ${Random().nextInt(59)}',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '${Random().nextInt(24)} : ${Random().nextInt(59)}',
  ),
  Info(
    userName: 'Medium daily digest',
    mailId: 'noreply@medium.com',
    title: 'Inheritance with Mixin in Flutter | ',
    description:
        'Common challenges faced when creating an OTT Platform In Flutter There is an unprecedented boom in the OTT Market across the globe due to the pandemic situation. From just a…',
    isSubscribe: false,
    isStared: true,
    logo: 'images/photo-10.png',
    time: '${Random().nextInt(24)} : ${Random().nextInt(59)}',
  ),
];
