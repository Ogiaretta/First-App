import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _StateEntryPoint createState() => _StateEntryPoint();
}

class _StateEntryPoint extends State<PageEntryPoint> {
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
        'name': "EntryPoint",
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
                    left: 155,
                    top: 45,
                    bottom: 5,
                  ),
                  child: Text(r'''Log in''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFF000000).withOpacity(1),
                          fontWeight: FontWeight.w700,
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
                    left: 10,
                    top: 30,
                    right: 10,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 42,
                    child: FacebookAuthButton(
                      onPressed: () async {},
                      onLongPress: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 42,
                    child: GoogleAuthButton(
                      onPressed: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 42,
                    child: AppleAuthButton(
                      onPressed: () async {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 255,
                    top: 10,
                  ),
                  child: Text(r'''Forget password?''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFF0000).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
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
                        '''Register''',
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
