import 'package:flutter/material.dart';
import 'package:vtnet_components/vtnet_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            BaseToast(
                toastType: ToastType.info,
                message: 'ToastType.info',
                buttonTitle: 'Button',
                isHasAction: true,
                isHasTrailing: true),
            SizedBox(height: 10,),
            BaseToast(
              toastType: ToastType.warning,
              message: 'ToastType.warning',
              buttonTitle: 'Button',
              isHasAction: true,
            ),
            SizedBox(height: 10,),
            BaseToast(
                toastType: ToastType.error,
                message: 'ToastType.error',
                buttonTitle: 'Button',
                isHasTrailing: true),
            SizedBox(height: 10,),
            BaseToast(
                toastType: ToastType.success,
                message: 'ToastType.success',
                buttonTitle: 'Button'),
          ],
        ),
      ),
    );
  }
}
