import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({
    Key? key,
  }) : super(key: key);

  @override
  _StateRegister createState() => _StateRegister();
}

class _StateRegister extends State<PageRegister> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "Register",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withOpacity(1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 55,
                    bottom: 50,
                  ),
                  child: Image.network(
                    r'''https://i.pinimg.com/236x/f1/3a/ea/f13aea60a3c20b27511950882bcf4b79.jpg''',
                    width: double.maxFinite,
                    height: 150,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 143,
                    right: 45,
                    bottom: 5,
                  ),
                  child: Text(r'''Register''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      maxLines: 1),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFD1CECE).withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: null,
                    ),
                    child: TextField(
                      onChanged: (String value) async {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD1CECE).withOpacity(1),
                        counterStyle: TextStyle(
                          color: Color(0xFFD1CECE).withOpacity(1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        hintText: r'''E-mail''',
                        hintStyle: TextStyle(
                          color: Color(0xFF373535).withOpacity(1),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFF373232).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      minLines: 1,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFD1CECE).withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: null,
                    ),
                    child: TextField(
                      onChanged: (String value) async {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD1CECE).withOpacity(1),
                        counterStyle: TextStyle(
                          color: Color(0xFFD1CECE).withOpacity(1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        hintText: r'''Password''',
                        hintStyle: TextStyle(
                          color: Color(0xFF373535).withOpacity(1),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFF373232).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      minLines: 1,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    right: 16,
                    bottom: 8,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color(0xFFD1CECE).withOpacity(1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    border: null,
                  ),
                  child: TextField(
                    onChanged: (String value) async {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFD1CECE).withOpacity(1),
                      counterStyle: TextStyle(
                        color: Color(0xFFD1CECE).withOpacity(1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      hintText: r'''Check Password''',
                      hintStyle: TextStyle(
                        color: Color(0xFF373535).withOpacity(1),
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                      ),
                    ),
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF373232).withOpacity(1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    minLines: 1,
                    showCursor: true,
                    autocorrect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 265,
                    top: 15,
                  ),
                  child: Text(r'''I have register!''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFF0000).withOpacity(1),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      maxLines: 1),
                ),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                child: Container(
                    width: double.maxFinite,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFF3285FF).withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      border: null,
                    ),
                    child: Center(
                      child: Text(
                        '''Log in''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFFFFFFFF).withOpacity(1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    )),
              )),
        ],
      ),
    );
  }
}
