import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      body: Center(
        child: MyBox(
          color: Colors.deepPurple[300],
          child: MyButton(
            color: Colors.deepPurple[200],
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const MyBox({
    super.key,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(50),
      child: child,
    );
  }
}

class MyButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;

  const MyButton({
    super.key,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        child: const Center(
          child: Text('TAP'),
        ),
      ),
    );
  }
}
