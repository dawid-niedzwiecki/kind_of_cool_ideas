import 'package:flutter/material.dart';

import '../../charts/view/charts_page.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CoolTile(
            subject: '1. Charts',
            description: 'Animated charts dashsboard',
            iconData: Icons.bar_chart,
            page: const ChartsPage(),
            color: Colors.green.shade200,
          ),
          CoolTile(
            subject: '2. Row i Column',
            description: 'Test',
            iconData: Icons.format_shapes,
            page: const ChartsPage(),
            color: Colors.green.shade400,
          ),
          CoolTile(
            subject: '3. Stack',
            description: 'Test',
            iconData: Icons.smart_button,
            page: const ChartsPage(),
            color: Colors.green.shade600,
          ),
          CoolTile(
            subject: '4. Container i SizedBox',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.green.shade800,
          ),
          CoolTile(
            subject: '5. Komponenty Material Design',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.blue.shade200,
          ),
          CoolTile(
            subject: '6. Stateless/Stateful Widget',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.blue.shade400,
          ),
          CoolTile(
            subject: '7. Expanded/Flexible',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.blue.shade600,
          ),
          CoolTile(
            subject: '8. ListView',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.blue.shade800,
          ),
          CoolTile(
            subject: '9. Routing',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.orange.shade200,
          ),
          CoolTile(
            subject: '10. Routing',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.orange.shade400,
          ),
          CoolTile(
            subject: '11. Biblioteki z pub.dev',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.orange.shade600,
          ),
          CoolTile(
            subject: '12. Formularze',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.orange.shade800,
          ),
          CoolTile(
            subject: '13. Asynchroniczność',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.green.shade200,
          ),
          CoolTile(
            subject: '14. Zapytania HTTP',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.green.shade400,
          ),
          CoolTile(
            subject: '15. Assety, obrazy i ikony',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.green.shade600,
          ),
          CoolTile(
            subject: '16. Gesty',
            description: 'Test',
            iconData: Icons.text_fields,
            page: const ChartsPage(),
            color: Colors.green.shade800,
          ),
          const CoolTile(
            subject: '17. Zadania',
            description: 'Test',
            iconData: Icons.text_fields,
            page: ChartsPage(),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
