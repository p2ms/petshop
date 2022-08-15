import 'dart:io';
import 'package:flutter/foundation.dart';

import 'cont.dart';
/*import "../flutter_flow/flutter_flow_icon_button.dart";
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';*/
import 'pedidos.dart';
import 'perfil.dart';
import 'produtos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


void main() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor: Color(0xFFF57F17),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              'PETSCÃO',
              textAlign: TextAlign.center,
              style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF198FF5),
                    letterSpacing: 1,
                  ),
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.network(
                              'https://www.petz.com.br/blog/wp-content/uploads/2015/06/shutterstock_111029813.jpg',
                              width: double.infinity,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://petdelicia.com.br/blog/wp-content/uploads/2020/05/Captura-de-Tela-2020-05-28-a%CC%80s-00.23.33.png',
                              width: double.infinity,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://graiche.com.br/wp-content/uploads/2019/12/Espa%C3%A7o-Pet-no-condom%C3%ADnio.jpg',
                              width: double.infinity,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 16,
                              dotHeight: 16,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF198FF5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                child: Text(
                  'PETSCÃO\n O melhor para o seu melhor amigo sempre!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFBC02D),
                      ),
                ),
              ),
              Divider(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          IconButton(
                            color: Colors.transparent,
                            //borderRadius: 30,
                            //borderWidth: 1,
                            iconSize: 60,
                            icon: Icon(
                              Icons.pets,
                              color: Color(0xFFF9A825),
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Pedidos(),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            color: Colors.transparent,
                            iconSize: 60,
                            icon: Icon(
                              Icons.person,
                              color: Color(0xFFF9A825),
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Perfil(),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            color: Colors.transparent,
                            iconSize: 60,
                            icon: Icon(
                              Icons.shopping_bag,
                              color: Color(0xFFF9A825),
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Produtos(),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            color: Colors.transparent,
                            iconSize: 60,
                            icon: Icon(
                              Icons.call,
                              color: Color(0xFFF9A825),
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cont(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
