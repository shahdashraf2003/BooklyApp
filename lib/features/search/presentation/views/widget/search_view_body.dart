import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 2),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchTextFiled(),
                const SizedBox(height: 16),
                Text(
                  'Search Result',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                const Expanded(child: SerachResultListView()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SerachResultListView extends StatelessWidget {
  const SerachResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text('Harry Potter and the Goblet of Fire'),
          // child: BookListViewItem(

          // ),
        );
      },
    );
  }
}
