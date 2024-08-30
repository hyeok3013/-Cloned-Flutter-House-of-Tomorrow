import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:house_of_tomorrow/util/helper/intl_helper.dart';

final langServiceProvider =
    NotifierProvider<LangService, Locale>(LangService.new);

class LangService extends Notifier<Locale> {
  @override
  Locale build() {
    return IntlHelper.en;
  }

  /// 언어 변경
  void toggleLang() {
    state = IntlHelper.isKo ? IntlHelper.en : IntlHelper.ko;
  }
}
