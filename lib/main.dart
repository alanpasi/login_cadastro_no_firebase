import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:login_cadastro_no_firebase/meu_aplicativo.dart';
import 'package:login_cadastro_no_firebase/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: const MeuAplicativo(),
    ),
  );
}
