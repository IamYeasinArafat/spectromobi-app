import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ModulesScreen extends StatelessWidget {
  const ModulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(height: 300, child: ModulesGrid()),
    );
  }
}

class ModuleData {
  final String title;
  final String? description;
  final IconData icon;
  final String? routeName;

  const ModuleData({
    required this.title,
    this.description,
    this.icon = Icons.arrow_upward_outlined,
    this.routeName,
  });
}

class ModulesGrid extends StatelessWidget {
  const ModulesGrid({Key? key}) : super(key: key);

  void _navigate(BuildContext context, String? routeName) {
    if (routeName != null) context.goNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    final mainCard = ModuleData(
      title: 'Oil Purity',
      description: 'Detect purity of a given oil sample with spectrography',
      routeName: 'home',
    );

    final sideCards = [
      ModuleData(title: 'Oil Type', routeName: 'home'),
      ModuleData(title: 'Other Tools', routeName: 'home'),
    ];

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: ModuleCard(
            data: mainCard,
            onTap: () => _navigate(context, mainCard.routeName),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              sideCards.length,
              (i) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: i == 0 ? 5 : 0),
                  child: ModuleCard(
                    data: sideCards[i],
                    onTap: () => _navigate(context, sideCards[i].routeName),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ModuleCard extends StatelessWidget {
  final ModuleData data;
  final VoidCallback? onTap;

  const ModuleCard({Key? key, required this.data, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(data.icon),
                onPressed: () {}, // optional
                iconSize: 30,
                color: Colors.black,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (data.description != null) ...[
                  const SizedBox(height: 5),
                  Text(
                    data.description!,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
