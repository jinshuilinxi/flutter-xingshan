import 'package:flutter/material.dart';
import 'package:xingshan/redux/theme_redux.dart';
// 创建state类
class XSState {
  ThemeData themeData;
  Locale locale;
  // 构造方法
  XSState({
    this.themeData,
    this.locale
  });
}

XSState appReducer(XSState state, action) {
  return XSState(
    themeData: ThemeDataReducer(state.themeData, action ),
  );
}