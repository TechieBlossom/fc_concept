import 'package:core_design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

const _androidAdUnitId = 'ca-app-pub-3940256099942544/2247696110';
const _iOSAdUnitId = 'ca-app-pub-3940256099942544/2247696110';

class AppNativeAd extends StatefulWidget {
  const AppNativeAd({super.key});

  @override
  _AppNativeAdState createState() => _AppNativeAdState();
}

class _AppNativeAdState extends State<AppNativeAd> {
  NativeAd? _nativeAd;
  bool _nativeAdIsLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    _nativeAd = NativeAd(
      adUnitId: _iOSAdUnitId, // Test ID
      listener: NativeAdListener(
        onAdLoaded: (Ad ad) {
          setState(() {
            _nativeAdIsLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
          print('Native ad failed to load: $error');
        },
      ),
      request: const AdRequest(),
      // Styling
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.small,
        mainBackgroundColor: Colors.white,
        callToActionTextStyle: NativeTemplateTextStyle(
          textColor: const Color(0xFFFFFFFF),
          backgroundColor: const Color(0xFF000000),
          style: NativeTemplateFontStyle.bold,
          size: 16.0,
        ),
        primaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.black,
          style: NativeTemplateFontStyle.italic,
          size: 16.0,
        ),
        secondaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.grey,
          style: NativeTemplateFontStyle.normal,
          size: 14.0,
        ),
      ),
    );
    _nativeAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return _nativeAdIsLoaded
        ? SizedBox(height: 300, child: AdWidget(ad: _nativeAd!))
        : const SizedBox(
            height: 300,
            child: Center(child: CircularProgressIndicator()),
          );
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }
}
