import 'package:flutter/material.dart';
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
            itemExtent: 200.0,
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 200.0,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
          SliverFixedExtentList(delegate: SliverChildListDelegate([Container(height: 200.0, color: Colors.grey[300])]), itemExtent: 500,),
          SliverFadeTransition(
            opacity: AlwaysStoppedAnimation(1.0),
            sliver: state
                ? SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          state = !state;
                        });
                      },
                      child: Container(
                        height: 200.0,
                        color: Colors.red[300],
                      ),
                    ),
                  )
                : SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          state = !state;
                        });
                      },
                      child: Container(
                        height: 200.0,
                        color: Colors.blue[300],
                      ),
                    ),
                  ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
            ),
          ),
          SliverAppBar.medium(
            title: const Text('Teste teste'),
            expandedHeight: 30.0,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cacao Maca Walnut Milk',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8.0),
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.red[600]),
                    child: Row(
                      children: [
                        const Text('Food'),
                        const SizedBox(width: 8.0),
                        Container(
                          height: 5.0,
                          width: 5.0,
                          decoration: BoxDecoration(
                            color: Colors.red[600],
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text('60 mins'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ...List.generate(
                    20,
                    (index) => Container(
                      margin: const EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 16.0,
                                    width: 100.0,
                                    color: Colors.grey[300],
                                  ),
                                  const SizedBox(height: 4.0),
                                  Container(
                                    height: 16.0,
                                    width: 200.0,
                                    color: Colors.grey[300],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
