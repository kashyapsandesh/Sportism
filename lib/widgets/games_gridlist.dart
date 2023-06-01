import 'package:footgoal/const/exports/exports.dart';

class GameGridList extends StatefulWidget {
  const GameGridList({super.key});

  @override
  State<GameGridList> createState() => _GameGridListState();
}

class _GameGridListState extends State<GameGridList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
          child: popularLeagueMatches.text
              .fontFamily(atlanta)
              .size(24)
              .white
              .make(),
        ),
        10.heightBox,
        Expanded(
          child: GridView.builder(
              itemCount: popularLeague.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (ctx, index) {
                return Card(
                  color: golden,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                        onTap: () {}, child: Image.asset(popularLeague[index])),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
