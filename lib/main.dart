import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Toko OnlineKu",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          "https://image.idntimes.com/post/20220630/madaras-rinnegan-cropped-56965fbaa68adf470a17cc45ea5d328d-093d21c989cf2fb8515362edad7ff3ed.png",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Hai Jhon, Selamat Datang!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.network(
                      "https://www.shutterstock.com/image-vector/flash-sale-banner-design-shopping-260nw-2563324841.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        "FLASH SALE UP TO 70% OFF",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.menu, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        "Kategori Produk",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Baju", style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Celana", style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Sepatu", style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Aksesoris", style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Elektronik", style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.teal)),
                      child: Text("Buku", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            "https://id-live-01.slatic.net/p/dd244d750797a8aec337dda9b754a038.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                          Text("Baju Aloy", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Rp. 200.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            "https://down-id.img.susercontent.com/file/97dde8e47ca46f68495746dd808405c0",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                          Text("Celana Jeans", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Rp. 250.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            "https://images.tokopedia.net/img/cache/700/VqbcmM/2024/7/9/22895092-e086-4d4f-b28e-247d1fe0a3df.jpg.webp",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                          Text("Sepatu Sneakers", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Rp. 500.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            "https://clubestetico.com/cdn/shop/files/72A48D64-01F4-488E-8BEC-F86B38D3B1EB.jpg?v=1707310496",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                          Text("Jaket Stone Island", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Rp. 1.500.000"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}