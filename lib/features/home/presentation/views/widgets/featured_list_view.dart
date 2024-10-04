import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featuredbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_loading_indecator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedbooksState>(
      builder: (context, state) {
        if (state is FeaturedbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return  Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    bottom: 10,
                  ),
                  child: CustomLBookImage(imageUrl:state.books[index].volumeInfo.imageLinks.thumbnail,),
                );
              },
            ),
          );
        } else if (state is FeaturedbooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
