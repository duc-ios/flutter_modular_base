import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../generated/locale_keys.g.dart';
import '../blocs/about/about_bloc.dart';
import '../widgets/about_body.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.about.tr())),
      body: BlocProvider(
        create: (context) => AboutBloc(),
        child: const AboutBody(),
      ),
    );
  }
}