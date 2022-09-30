import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:auth_buttons/auth_buttons.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomePage createState() => _StateHomePage();
}

class _StateHomePage extends State<PageHomePage> {
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
        'name': "HomePage",
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
        children: [],
      ),
    );
  }
}
