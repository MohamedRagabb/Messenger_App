import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String image;

  const ChatScreen({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue,
            )),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Text(
                    "كلمة «النص»: تستخدم في علم اللغويات للإشارة إلى أي فقرة مكتوبة أو منطوقة مع الرغم ذلك أنها طويلة أو قصيرة والشرط في هذا الصدد أنها تكون وحدة متكاملة.ونحو الن"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Text(
                    "كلمة «النص»: تستخدم في علم اللغويات للإشارة إلى أي فقرة مكتوبة أو منطوقة مع الرغم ذلك أنها طويلة أو قصيرة والشرط في هذا الصدد أنها تكون وحدة متكاملة.ونحو النص: هو مصطلح من المصطلحات التي قررت لنفسها هدفاً واحداً وهو الوصف والدراسة اللغوية للأبنية النصية، وكذلك هو تحليل المظاهر المتنوعة لجميع أشكال التواصل!"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Text(
                    "كلمة «النص»: تستخدم في علم اللغويات للإشارة إلى أي فقرة مكتوبة أو منطوقة مع الرغم ذلك أنها طويلة أو قصيرة والشرط في هذا الصدد أنها تكون وحدة متكاملة.ونحو النص: هو مصطلح من المصطلحات التي قررت لنفسها هدفاً واحداً وهو الوصف والدراسة اللغوية للأبنية النصية، وكذلك هو تحليل المظاهر المتنوعة لجميع أشكال التواصل"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Text(
                    "كلمة «النص»: تستخدم في علم اللغويات للإشارة إلى أي فقرة مكتوبة أو منطوقة مع الرغم ذلك أنها طويلة أو قصيرة والشرط في هذا الصدد أنها تكون وحدة متكاملة.ونحو النص: هو مصطلح من المصطلحات التي قررت لنفسها هدفاً واحداً وهو الوصف والدراسة اللغوية للأبنية النصية، وكذلك هو تحليل المظاهر المتنوعة لجميع أشكال التواصل!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}