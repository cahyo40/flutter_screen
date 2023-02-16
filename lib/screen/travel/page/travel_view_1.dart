import 'package:flutter/material.dart';
import 'package:yo_styles/style.dart';

class TravelPage1 extends StatelessWidget {
  const TravelPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: YoPadding.a4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lokasi",
                        style: TextStyle(
                          color: YoColor.stone.shade500,
                          fontSize: YoFSize.textSM,
                          fontWeight: YoFWeight.medium,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            size: 14,
                          ),
                          const YoSpace(
                            v: false,
                            tSpace: TSpace.sm,
                          ),
                          Text(
                            "Wonosobo",
                            style: TextStyle(
                              color: YoColor.stone.shade800,
                              fontSize: YoFSize.textLG,
                              fontWeight: YoFWeight.semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.notifications_outlined),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: YoPadding.x5y4,
                child: ListView(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_outlined),
                        hintText: "Cari destinasi",
                        hintStyle: TextStyle(
                          color: YoColor.stone.shade500,
                          fontSize: YoFSize.textBASE,
                          fontWeight: YoFWeight.medium,
                        ),
                        filled: true,
                        fillColor: YoColor.amber.shade100.withOpacity(.25),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: YoRadius.arLG,
                          borderSide: const BorderSide(
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                    const YoSpace(
                      v: true,
                      tSpace: TSpace.xl,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tipeDestinasi.length,
                        itemBuilder: (_, index) {
                          return Container(
                            padding: const EdgeInsets.only(right: 12),
                            child: Center(
                              child: Container(
                                padding: YoPadding.x4y3,
                                decoration: BoxDecoration(
                                  color: index == 0
                                      ? YoColor.orange
                                      : YoColor.orange.shade100,
                                  borderRadius: YoRadius.arLG,
                                ),
                                child: Text(
                                  tipeDestinasi[index],
                                  style: TextStyle(
                                    color: index == 0
                                        ? YoColor.stone.shade50
                                        : YoColor.stone.shade800,
                                    fontSize: YoFSize.textBASE,
                                    fontWeight: YoFWeight.medium,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const YoSpace(
                      v: true,
                      tSpace: TSpace.xl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Populer",
                          style: TextStyle(
                            color: YoColor.stone.shade800,
                            fontSize: YoFSize.textLG,
                            fontWeight: YoFWeight.bold,
                          ),
                        ),
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                            color: YoColor.stone.shade500,
                            fontSize: YoFSize.textBASE,
                            fontWeight: YoFWeight.medium,
                          ),
                        ),
                      ],
                    ),
                    const YoSpace(
                      v: true,
                      tSpace: TSpace.xl,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listPopuler.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Center(
                              child: Container(
                                height: 210,
                                width: 150,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  color: YoColor.stone.shade50,
                                  borderRadius: YoRadius.arLG,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 160,
                                      width: 150,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 140,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  listPopuler[index]['gambar'],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned.fill(
                                            right: 10,
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                padding: YoPadding.a2,
                                                decoration: BoxDecoration(
                                                  color: YoColor.stone.shade50,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: const Icon(
                                                  Icons.favorite_rounded,
                                                  size: 16,
                                                  color: YoColor.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: YoPadding.x2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listPopuler[index]['nama'],
                                            style: TextStyle(
                                              color: YoColor.stone.shade800,
                                              fontSize: YoFSize.textBASE,
                                              fontWeight: YoFWeight.semiBold,
                                            ),
                                          ),
                                          const YoSpace(
                                            v: true,
                                            tSpace: TSpace.sm,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on_outlined,
                                                size: 14,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  listPopuler[index]['lokasi'],
                                                  style: TextStyle(
                                                    color:
                                                        YoColor.stone.shade500,
                                                    fontSize: YoFSize.textSM,
                                                    fontWeight:
                                                        YoFWeight.medium,
                                                  ),
                                                ),
                                              ),
                                              const Icon(
                                                Icons.star_border_outlined,
                                                size: 14,
                                                color: YoColor.amber,
                                              ),
                                              const YoSpace(
                                                v: false,
                                                tSpace: TSpace.sm,
                                              ),
                                              Text(
                                                "4.5",
                                                style: TextStyle(
                                                  color: YoColor.stone.shade500,
                                                  fontSize: YoFSize.textSM,
                                                  fontWeight: YoFWeight.medium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const YoSpace(
                      v: true,
                      tSpace: TSpace.xl,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rekomendasi",
                          style: TextStyle(
                            color: YoColor.stone.shade800,
                            fontSize: YoFSize.textLG,
                            fontWeight: YoFWeight.semiBold,
                          ),
                        ),
                        Text(
                          "Lihat semua",
                          style: TextStyle(
                            color: YoColor.stone.shade500,
                            fontSize: YoFSize.textBASE,
                            fontWeight: YoFWeight.medium,
                          ),
                        ),
                      ],
                    ),
                    const YoSpace(
                      v: true,
                      tSpace: TSpace.md,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: listPopuler.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Container(
                            height: 80,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: YoColor.stone.shade50,
                              borderRadius: YoRadius.arXL,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: YoRadius.arLG,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        listPopuler[index]['gambar'],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: YoPadding.x4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          listPopuler[index]['nama'],
                                          style: TextStyle(
                                            color: YoColor.stone.shade800,
                                            fontSize: YoFSize.textBASE,
                                            fontWeight: YoFWeight.semiBold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              size: 14,
                                            ),
                                            Expanded(
                                              child: Text(
                                                listPopuler[index]['lokasi'],
                                                style: TextStyle(
                                                  color: YoColor.stone.shade500,
                                                  fontSize: YoFSize.textSM,
                                                  fontWeight: YoFWeight.medium,
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star_border_outlined,
                                              size: 14,
                                              color: YoColor.amber,
                                            ),
                                            const YoSpace(
                                              v: false,
                                              tSpace: TSpace.sm,
                                            ),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                color: YoColor.stone.shade500,
                                                fontSize: YoFSize.textSM,
                                                fontWeight: YoFWeight.medium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> tipeDestinasi = [
  "Gunung",
  "Pantai",
  "Bukit",
  "Camping",
  "Danau",
  "Hutan",
  "Air Terjun",
  "Sungai",
];

List<Map<String, dynamic>> listPopuler = [
  {
    "nama": "Gunung Sindoro",
    "lokasi": "Wonosobo",
    "gambar":
        "https://img.alinea.id/crop/600x400/content/2020/07/23/81479/jalur-pendakian-gunung-sindoro-via-kledung-segera-dibuka-U0b2IIO75Q.jpg"
  },
  {
    "nama": "Gunung Prau",
    "lokasi": "Wonosobo",
    "gambar":
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit621414gsm/events/2021/03/02/d828c7c7-7ed3-4c0c-9514-792450edf416-1614692777918-e8150d2d7b341cedde3548ac61970339.jpg"
  },
  {
    "nama": "Gunung Merapi",
    "lokasi": "Yogyakarta",
    "gambar":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Merapi_mountain.jpg/1280px-Merapi_mountain.jpg"
  },
];
