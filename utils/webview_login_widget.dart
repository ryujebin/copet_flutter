import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pet/const/models/token_user_model.dart';

import '../main.dart';

class WebviewLoginWidget extends StatefulWidget {
  final String url;
  const WebviewLoginWidget({
    super.key,
    required this.url
  });

  @override
  State<WebviewLoginWidget> createState() => _WebviewLoginWidgetState();
}

class _WebviewLoginWidgetState extends State<WebviewLoginWidget> {
 @override
 void initState() {
    super.initState();
 }
 final GlobalKey webViewKey = GlobalKey();
 InAppWebViewController? webViewController;
 final CookieManager cookieManager = CookieManager.instance();

 final storage = FlutterSecureStorage();
 @override
  build(BuildContext context){
    return SafeArea(
      child: Consumer(
          builder:(context, provider, child){
        return  InAppWebView(
            key: webViewKey,
            initialUrlRequest: URLRequest(url: WebUri(widget.url)),
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
            onUpdateVisitedHistory: (controller, url, androidIsReload) async {
              String? apiKey = dotenv.env['API_KEY'].toString();

              if(url.toString().contains(apiKey)){
                //리다이렉트 시
                final List<Cookie> cookie = await cookieManager.getCookies(url: url!);
                final String? cookieValue = cookie[0].value;

                if (cookieValue != null) {
                  //쿠키에서 userid가져온 후, provider를 통해 id 업데이트
                  final decodedUser = JwtDecoder.decode(cookieValue);
                  final TokenUserModel parsedUser = TokenUserModel.fromJson(token: decodedUser);
                  await storage.write(key: 'ACCESS_TOKEN', value: cookieValue);
                }
                if(cookieValue == null){
                  print('------------------------------------------------ cookie 없음');
                }
                else{
                  //에러처리
                }
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => App()), // 이동할 새로운 화면
                      (Route<dynamic> route) => false, // 모든 이전 스택 제거
                );
              }
            }
        );
      })
    );
  }
}
