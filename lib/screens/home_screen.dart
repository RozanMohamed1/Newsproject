import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/cubit/news_cubit_cubit.dart';
import 'package:iti/cubit/news_cubit_state.dart';
import '../widgets/category_item.dart';
import '../widgets/news_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News App")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,//علشان ماياخدش المساحه كلها
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CategoryItem(
                      title: "General",
                      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRACjUbLINIKqdUkwr_Ib_neCh3URaX9-iIkA&s",
                    ),
                    CategoryItem(
                      title: "Sports",
                      imageUrl: "https://sc01.alicdn.com/kf/HTB1uCg0PFXXXXXoXXXXxh4dFXXXD/Foot-Ball-Size-1-2-3-4.jpeg",
                    ),
                    CategoryItem(
                      title: "Business",
                      imageUrl: "https://t3.ftcdn.net/jpg/04/40/29/94/360_F_440299419_s4b12RfNDJvpplheVDmKdhFGJiHlAYNs.jpg",
                    ),
                    CategoryItem(
                      title: "Technology",
                      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNMpCs9sc0Zs48ygHIfWEe2jL_81DRCiu_Fw&s",
                    ),
                    CategoryItem(
                      title: "Entertainment",
                      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN3lTma1susw4ZzAVqvaLccAg714ahqMOhkw&s",
                    ),
                    CategoryItem(
                      title: "Health",
                      imageUrl: "data:image/jpeg;base64,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",
                    ),
                  ],
                ),
              ),
               BlocBuilder<NewsCubit, NewsCubitState>(
  builder: (context, state) {
    if (state is NewsCubitLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is NewsCubitSuccess) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: state.newlist.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(state.newlist[i].title ?? "No title"),
          subtitle: Text(state.newlist[i].desc ?? "No description"),
        ),
      );
    } else if (state is NewsCubitFailure) {
      return Center(child: Text(state.errorMessage ?? "Something went wrong"));
    }
    return const SizedBox.shrink();
  },
),

              const NewsItem(
                title: "Issue 1: Ohio vote delivers win for abortion rights supporters",
                subtitle:
                    "A vote to raise the bar to amend Ohio’s constitution became a battle over abortion rights in the state.",
                imageUrl: "https://picsum.photos/200/300?random=1",
              ),
              const NewsItem(
                title: "Stock market today: Live updates",
                subtitle:
                    "Investors are coming off a down session for the major averages Tuesday.",
                imageUrl: "https://picsum.photos/200/300?random=2",
              ),
              const NewsItem(
                title: "Tech layoffs continue",
                subtitle: "Several firms announced new rounds of layoffs this week.",
                imageUrl: "https://picsum.photos/200/300?random=3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}