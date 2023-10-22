import 'package:flutter/material.dart';
import 'package:uigplx/SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ôn thi GPLX - B2",
            style: TextStyle(fontWeight: FontWeight.w700)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, size: 30),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.yellow[600],
        leading: IconButton(
          icon: const Icon(Icons.settings, size: 30,),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingScreen()));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: widthScreen,
        height: heightScreen,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: <Color>[
              Color.fromARGB(255, 214, 214, 214),
              Color.fromARGB(255, 224, 224, 224),
              Color.fromARGB(255, 238, 238, 238),
              Color.fromARGB(255, 245, 245, 245),
              Color.fromARGB(255, 245, 245, 245),
              Color.fromARGB(255, 250, 250, 250),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///Quảng cáo, poster (ô 1)
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),

              SizedBox(height: 15),

              /// Nội dung  (ô 2)
              Container(
                height: 230,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Nội dung (line 1)
                    Container(
                      height: 93,
                      width: widthScreen,
                      //color: Colors.cyan,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                //color: Colors.green,
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/learn600.png')),
                                    Text(
                                      'Lí thuyết',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          const SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/illustrate.png')),
                                    Text(
                                      'Mô phỏng',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/forbidden.png')),
                                    Text(
                                      'Biển báo',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/triangle.png')),
                                    Text(
                                      'Sa hình',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),

                    /// Nội dung (line 2)
                    Container(
                      height: 93,
                      width: widthScreen,
                      //color: Colors.cyan,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                //color: Colors.green,
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/exam.png')),
                                    Text(
                                      'Thi thử',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          const SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/bookmark.png')),
                                    Text(
                                      'Lưu',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/cross-button.png')),
                                    Text(
                                      'Câu sai',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(height: 8),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 93,
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/icons/light-bulb.png')),
                                    Text(
                                      'Mẹo',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              ///Quảng cáo, poster 2
              Container(
                height: 85,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),

              SizedBox(height: 35),

              ///Ôn tập theo chủ đề
              Container(
                height: 35,
                width: widthScreen,
                decoration: const BoxDecoration(
                  //color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Text('Ôn tập theo chủ đề',
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              ),

              SizedBox(height: 10),

              ///Row 1 (ôn tập theo chủ đề)
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  //color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('assets/icons/flag.png')),
                              Text('Các câu điểm liệt',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        )),
                    SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage('assets/icons/kn-qt.png')),
                              Text('Khái niệm và quy tắc',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ))
                  ],
                ),
              ),

              SizedBox(height: 10),

              ///row 2 (ôn tập theo chủ đề)
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  //color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage('assets/icons/truck.png')),
                              Text('Nghiệp vụ vận tải',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        )),
                    SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage('assets/icons/driver.png')),
                              Text('Văn hóa và đạo đức',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ))
                  ],
                ),
              ),

              SizedBox(height: 10),

              ///row 3 (ôn tập theo chủ đề)
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  //color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('assets/icons/car2.png')),
                              Text('Kỹ thuật lái xe',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        )),
                    SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/icons/maintenance.png')),
                              Text('Cấu tạo và sửa chửa',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ))
                  ],
                ),
              ),

              SizedBox(height: 10),

              ///row 4 (ôn tập theo chủ đề)
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  //color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image:
                                      AssetImage('assets/icons/warning.png')),
                              Text('Biển báo đường bộ',
                                  style: TextStyle(fontSize: 17))
                            ],
                          ),
                        )),
                    SizedBox(width: 15),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/icons/traffic-cone.png')),
                              Text('Sa hình', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ))
                  ],
                ),
              ),

              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
