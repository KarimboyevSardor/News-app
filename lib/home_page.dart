import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<NewsData> items = [
    NewsData(
      "Texnologiya yangiliklari",
      "2025-06-18 10:30",
      "Apple yangi iPhone 16 Pro modelini taqdim etdi.",
      "https://avatars.mds.yandex.net/i?id=743e3abc92b3e6f47853e8af428d9db9_l-12853318-images-thumbs&n=13",
      "1500",
    ),
    NewsData(
      "Sport yangiliklari",
      "2025-06-18 08:00",
      "O‘zbekiston terma jamoasi Osiyo Kubogiga yo‘llanma oldi.",
      "https://avatars.mds.yandex.net/i?id=38e43c7408f3b5e7096b3ec19609c496_l-4600454-images-thumbs&n=13",
      "2340",
    ),
    NewsData(
      "Iqtisodiy yangiliklar",
      "2025-06-17 18:45",
      "Dollar kursi yana oshdi – yangi ko‘rsatkichlar e'lon qilindi.",
      "https://avatars.mds.yandex.net/i?id=2a000001977de063d7473cb4c52678fd5eac-1677519-fast-images&n=13",
      "3200",
    ),
    NewsData(
      "Madaniyat",
      "2025-06-16 12:00",
      "Toshkentda xalqaro kinofestival boshlandi.",
      "https://daryo.uz/static/2023/Nargiz%20Murodova/photo_2023-09-29_20-22-19.jpg",
      "980",
    ),
    NewsData(
      "Texnika yangiliklari",
      "2025-06-15 16:30",
      "Samsung Galaxy Z Fold 6 rasmi e’lon qilindi.",
      "https://s.yimg.com/ny/api/res/1.2/y_wj9UMefleI2kamBr.EXA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02Nzg-/https://media.zenfs.com/en/techradar_949/6aa59d88d8be8f856bd97aab28b00d7f",
      "1120",
    ),
    NewsData(
      "Ilm-fan",
      "2025-06-14 14:20",
      "NASA Yupiterga yangi sun'iy yo‘ldosh uchirdi.",
      "https://avatars.mds.yandex.net/i?id=fb3f673d9ef2a7d39db5264fc4731cdcad1bf8e27bfa7c8d-12447868-images-thumbs&n=13",
      "1760",
    ),
    NewsData(
      "Mahalliy yangiliklar",
      "2025-06-14 09:10",
      "Namanganda yangi avtomobil zavodi ochildi. Namanganda yangi avtomobil zavodi ochildi. Namanganda yangi avtomobil zavodi ochildi. Namanganda yangi avtomobil zavodi ochildi. Namanganda yangi avtomobil zavodi ochildi.",
      "https://cdn1.img.sputniknews.uz/img/581/98/5819863_0:93:1000:658_2072x0_60_0_0_ed2bc62cc65432ac09dfa5b2ff9c71d2.jpg",
      "1345",
    ),
    NewsData(
      "Salomatlik",
      "2025-06-13 11:00",
      "Yangi gripp virusi haqida mutaxassislar ogohlantirmoqda.",
      "https://avatars.mds.yandex.net/i?id=1291d45287e5b7090a2d44df54265997_l-4504372-images-thumbs&n=13",
      "2560",
    ),
    NewsData(
      "Sayohat",
      "2025-06-12 17:00",
      "Top 10 ta eng ko‘p tashrif buyurilgan davlatlar.",
      "https://avatars.mds.yandex.net/i?id=271eac989a4812ae5d5e579787f57f5f_l-7757532-images-thumbs&n=13",
      "870",
    ),
    NewsData(
      "Ijtimoiy tarmoqlar",
      "2025-06-11 20:00",
      "Instagram yangi algoritmini ishga tushirdi.",
      "https://avatars.mds.yandex.net/i?id=67052c6cd120a3bc8a0a76ce238e2b3e9ee01976-12752501-images-thumbs&n=13",
      "4100",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(
          "Daryo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                ScaffoldMessenger.of(context).showSnackBar(mySnackbar());
              });
            },
            child: Icon(Icons.search),
          ),
          SizedBox(width: 12),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Daryo",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Spacer(),
                    ],
                  ),
                  Spacer(),
                  Row(
                    spacing: 8,
                    children: [
                      Text("Toshkent", style: TextStyle(color: Colors.white)),
                      Spacer(),
                      Icon(Icons.cloud_queue_sharp, color: Colors.white),
                      Text("+12C", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "10769.78",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.euro, color: Colors.white, size: 16),
                          Text(
                            "12166.62",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_ruble,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "146.17",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                tileColor: Colors.amber,
                title: Text(
                  "Qo'llanma ekranini ko'rsatish",
                  style: TextStyle(),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: ListTile(title: Text("So'ngi yangiliklar")),
            ),
            ListTile(title: Text("Mahalliy")),
            ListTile(title: Text("Dunyo")),
            ListTile(title: Text("Texnologiyalar")),
            Divider(color: Colors.grey, height: 0.5),
            ListTile(title: Text("Tanlangan xabarlar")),
            Divider(color: Colors.grey, height: 0.5),
            ListTile(title: Text("Madaniyat")),
            ListTile(title: Text("Avto")),
            ListTile(title: Text("Sport")),
            ListTile(title: Text("Foto")),
            ListTile(title: Text("Lifestyle")),
            ListTile(title: Text("Kolumnistlar")),
            ListTile(title: Text("Afisha")),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return myWidget(items[index]);
        },
      ),
    );
  }

  SnackBar mySnackbar() {
    return SnackBar(content: Text("Qidiruv"), duration: Duration(seconds: 1));
  }

  Widget myWidget(NewsData news) {
    return InkWell(
      onTap: () {
        setState(() {

        });
      },
      child: Card(
        margin: EdgeInsets.all(4),
        elevation: 4,
        shadowColor: Colors.blueGrey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      news.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  spacing: 6,
                  children: [
                    Text(news.dataTime, style: TextStyle(color: Colors.grey)),
                    Icon(Icons.remove_red_eye, color: Colors.blue),
                    Text(news.korishlar, style: TextStyle(color: Colors.blue)),
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Image.network(news.imgUrl)),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Text(
                      news.desc,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Divider(height: 0.5, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
