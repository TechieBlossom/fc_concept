import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

const _androidAdUnitId = 'ca-app-pub-3120340324769292/8582363603';
const _iOSAdUnitId = 'ca-app-pub-3120340324769292/2408794698';

class AppBannerAd extends StatefulWidget {
  const AppBannerAd({super.key, this.adSize = AdSize.banner});

  final AdSize adSize;

  @override
  State<AppBannerAd> createState() => _AppBannerAdState();
}

class _AppBannerAdState extends State<AppBannerAd> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  void _loadAd() {
    final bannerAd = BannerAd(
      size: widget.adSize,
      adUnitId: Platform.isAndroid ? _androidAdUnitId : _iOSAdUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    );

    // Start loading.
    bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SizedBox(
          width: widget.adSize.width.toDouble(),
          height: widget.adSize.height.toDouble(),
          child: _bannerAd == null
              ? const SizedBox.shrink()
              : AdWidget(ad: _bannerAd!),
        ),
      ),
    );
  }
}
