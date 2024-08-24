import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/design_system/components/text/text.dart';
import 'package:for_later_app/app/features/new_item/presentation/widgets/new_item_app_bar.dart';

class NewItemPage extends StatefulWidget {
  const NewItemPage({this.url, super.key});
  final String? url;

  @override
  State<NewItemPage> createState() => _NewItemPageState();
}

class _NewItemPageState extends State<NewItemPage> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const NewItemAppBar(),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 24),
                const DSText('URL Compatilhada'),
                Text(widget.url ?? ''),
              ],
            ),
            itemExtent: 100,
          ),
        ],
      ),
    );
  }
}
