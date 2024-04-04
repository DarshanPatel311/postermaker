import 'package:flutter/material.dart';
List colorlist =[
  Colors.amberAccent,
  Colors.redAccent,
  Colors.green,
  Colors.black,
  Colors.white,
];
List festivalList = [
  {
    'Festival name': 'Diwali',
    'Text': 'Create your Diwali Templates',
    'Images': 'assets/img/diwali.jpg',
    'Color': Color(0xffF7B787),
    'img': [
      'assets/festival_img/diwali/img1.jpg',
      'assets/festival_img/diwali/img2.jpg',
      'assets/festival_img/diwali/img3.jpg',
      'assets/festival_img/diwali/img4.jpg'
    ],
  },
  {
    'Festival name': 'Raksha Bandhan',
    'Text': 'Create your Raksha Bandhan Templates',
    'Images': 'assets/img/rakshabandhan1.jpg',
    'Color': Color(0xffD9EDBF),
    'img': [
      'assets/festival_img/Raksha Bandhan/img1.jpg',
      'assets/festival_img/Raksha Bandhan/img2.jpg',
      'assets/festival_img/Raksha Bandhan/img3.jpg',
      'assets/festival_img/Raksha Bandhan/img4.jpg',

    ],
  },
  {
    'Festival name': 'Uttarayan',
    'Text': 'Create your Pongal Templates',
    'Images': 'assets/img/uttarayan.jpg',
    'Color': Color(0xffF9F07A),
    'img': [
      'assets/festival_img/maker sakranti/img1.jpg',
      'assets/festival_img/maker sakranti/img2.jpg',
      'assets/festival_img/maker sakranti/img3.jpg',
      'assets/festival_img/maker sakranti/img4.jpg',

    ],
  },
  {
    'Festival name': 'Holi',
    'Text': 'Create your Makar Sakranti Templates',
    'Images': 'assets/img/holi3.jpg',
    'Color': Color(0xffD875C7),
    'img': [
      'assets/festival_img/holi/holi.jpg',
      'assets/festival_img/holi/img5.jpg',
      'assets/festival_img/holi/img1.jpg',
      'assets/festival_img/holi/img2.jpg',
      'assets/festival_img/holi/img3.jpg',
      'assets/festival_img/holi/img4.jpg',

    ],

  },
  {
    'Festival name': 'Mahashivratri',
    'Text': 'Create your Basant Panchami Templates',
    'Images': 'assets/img/mahashivratri.jpg',
    'Color': Colors.orangeAccent,
    'img': [
      'assets/festival_img/maha shivratri/img1.jpg',
      'assets/festival_img/maha shivratri/img2.jpg',
      'assets/festival_img/maha shivratri/img3.jpg',
      'assets/festival_img/maha shivratri/img4.jpg',
      'assets/festival_img/maha shivratri/img5.jpg',

    ],
  },
  {
    'Festival name': 'Navratri',
    'Text': 'Create your Navratri Templates',
    'Images': 'assets/img/navratri.webp',
    'Color': Color(0xffAAD9BB),
    'img': [
      'assets/festival_img/navratri/img1.jpg',
      'assets/festival_img/navratri/img2.jpg',
      'assets/festival_img/navratri/img3.jpg',
      'assets/festival_img/navratri/img4.jpg',
      'assets/festival_img/navratri/img5.jpg',

    ],
  },
  {
    'Festival name': 'Bhai dhuj',
    'Text': 'Create your Bhai dhuj Templates',
    'Images': 'assets/img/bhaidooj.jpg',
    'Color': Color(0xffFEC7B4),
    'img': [
      'assets/festival_img/bhai dooj/Bhai_dhuj.jpg',
      'assets/festival_img/bhai dooj/img1.jpg',
      'assets/festival_img/bhai dooj/img2.jpg',
      'assets/festival_img/bhai dooj/img3.jpg',
      'assets/festival_img/bhai dooj/img4.jpg',

    ],
  },
  {
    'Festival name': 'Ganesh Chaturthi',
    'Text': 'Create your Ganesh Chaturthi Templates',
    'Images': 'assets/img/ganesh chaturthi3.jpg',
    'Color': Color(0xffFFCDEA),
    'img': [
      'assets/img/gandhi jayanti.jpg',
      'assets/img/gandhi jayanti 1.jpg',
      'assets/img/gandhi jayanti 2.jpg',
      'assets/img/gandhi jayanti 3.jpg'
    ],
  },
  {
    'Festival name': 'Independence Day',
    'Text': 'Create your Independence Day Templates',
    'Images': 'assets/img/26 january3.jpg',
    'Color': Color(0xffD6DAC8),
    'img': [
      'assets/festival_img/independence/img1.jpg',
      'assets/festival_img/independence/img2.jpg',
      'assets/festival_img/independence/img3.jpg',
      'assets/festival_img/independence/img4.jpg',
      'assets/festival_img/independence/img5.jpg',

    ],
  },
  {
    'Festival name': 'Republic Day',
    'Text': 'Create your Republic Day Templates',
    'Images': 'assets/img/26 january1.jpg',
    'Color': Color(0xffFEC7B4),
    'img': [
      'assets/festival_img/republic/img1.jpg',
      'assets/festival_img/republic/img2.jpg',
      'assets/festival_img/republic/img3.jpg',
      'assets/festival_img/republic/img4.jpg',
      'assets/festival_img/republic/img5.jpg',
      'assets/festival_img/republic/img5.jpg',
    ],
  },
  {
    'Festival name': 'Janmastami',
    'Text': 'Create your Krishna Janmashtami Templates',
    'Images': 'assets/img/janmashtami.webp',
    'Color': Color(0xffEFBC9B),
    'img': [
      'assets/festival_img/krishna janmashtami/img1.jpg',
      'assets/festival_img/krishna janmashtami/img2.jpg',
      'assets/festival_img/krishna janmashtami/img3.jpg',
      'assets/festival_img/krishna janmashtami/img4.jpg',
      'assets/festival_img/krishna janmashtami/img5.jpg',

    ],
  },
  {
    'Festival name': 'Dussera',
    'Text': 'Create your Dussera Templates',
    'Images': 'assets/img/dussehra.jpg',
    'Color': Color(0xffFF6868),
    'img': [
      'assets/festival_img/dussehra/img1.jpg',
      'assets/festival_img/dussehra/img2.jpg',
      'assets/festival_img/dussehra/img3.jpg',
      'assets/festival_img/dussehra/img4.jpg',
      'assets/festival_img/dussehra/img5.jpg',

    ],
  },
  {
    'Festival name': 'Ram Navami',
    'Text': 'Create your Ram Navami Templates',
    'Images': 'assets/img/ram navmi3.jpg',
    'Color': Color(0xffBFEA7C),
    'img': [
      'assets/festival_img/ram navami/img1.jpg',
      'assets/festival_img/ram navami/img2.jpg',
      'assets/festival_img/ram navami/img3.jpg',
      'assets/festival_img/ram navami/img4.jpg',
      'assets/festival_img/ram navami/img5.jpg',

    ],
  },
  {
    'Festival name': 'Nag Panchami',
    'Text': 'Create your Saraswati pooja Templates',
    'Images': 'assets/img/nagpanchami.jpg',
    'Color': Color(0xffF6F193),
    'img': [
      'assets/img/diwali.jpg',
      'assets/img/diwali2.jpg',
      'assets/img/26 january4.webp',
      'assets/img/holi3.jpg'
    ],
  },
];

int postviewIndex = 0;

