import '../models/component_info.dart';
import '../screens/layout_components.dart';
import '../screens/input_components.dart';
import '../screens/button_components.dart';
import '../screens/navigation_components.dart';
import '../screens/list_grid_screen.dart';
import '../screens/dialog_snackbar_screen.dart';

List<ComponentInfo> getComponents() {
  return [
    ComponentInfo(
      title: 'Layout Widgets',
      description: 'Organize UI using Row, Column, etc.',
      page: const LayoutComponentsScreen(),
      code: layoutCode,
    ),
    ComponentInfo(
      title: 'Input Widgets',
      description: 'TextField, Checkbox, Switch, etc.',
      page: const InputComponentsScreen(),
      code: inputCode,
    ),
    ComponentInfo(
      title: 'Buttons',
      description: 'Elevated, Outlined, Text buttons.',
      page: const ButtonComponentsScreen(),
      code: buttonCode,
    ),
    ComponentInfo(
      title: 'Navigation Widgets',
      description: 'Routing and page transitions.',
      page: const NavigationComponentsScreen(),
      code: navigationCode,
    ),
    ComponentInfo(
      title: 'List & Grid',
      description: 'ListView and GridView demos.',
      page: const ListGridScreen(),
      code: listGridCode,
    ),
    ComponentInfo(
      title: 'Dialogs & Snackbar',
      description: 'User feedback widgets.',
      page: const DialogSnackbarScreen(),
      code: dialogCode,
    ),
  ];
}

const String layoutCode = '''
class LayoutComponentsScreen extends StatelessWidget {
  const LayoutComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Widgets')),
      body: Column(
        children: const [
          Text('This is a Row:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
          ),
        ],
      ),
    );
  }
}''';

const String inputCode = '''
class InputComponentsScreen extends StatelessWidget {
  const InputComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Components')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            TextField(decoration: InputDecoration(labelText: 'Enter text')),
            Checkbox(value: true, onChanged: null),
            Switch(value: true, onChanged: null),
          ],
        ),
      ),
    );
  }
}''';

const String buttonCode = '''
class ButtonComponentsScreen extends StatelessWidget {
  const ButtonComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Components')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            TextButton(onPressed: () {}, child: const Text('Text')),
          ],
        ),
      ),
    );
  }
}''';

const String navigationCode = '''
class NavigationComponentsScreen extends StatelessWidget {
  const NavigationComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Scaffold(
                appBar: AppBar(title: const Text('Next Page')),
                body: const Center(child: Text('Hello from another page!')),
              ),
            ),
          ),
          child: const Text('Go to Next'),
        ),
      ),
    );
  }
}''';

const String listGridCode = '''
class ListGridScreen extends StatelessWidget {
  const ListGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List & Grid View'),
          bottom: const TabBar(
            tabs: [Tab(text: 'List'), Tab(text: 'Grid')],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (_, i) => ListTile(title: Text('List Item \$i')),
            ),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (i) => Card(child: Center(child: Text('Grid \$i')))),
            )
          ],
        ),
      ),
    );
  }
}''';

const String dialogCode = '''
class DialogSnackbarScreen extends StatelessWidget {
  const DialogSnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs & Snackbar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('This is a dialog'),
                  actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
                ),
              ),
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar!')),
              ),
              child: const Text('Show Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}''';
