import 'package:built_collection/built_collection.dart';
import 'package:diet_driven/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:diet_driven/blocs/blocs.dart';

class DiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FoodDiaryBloc _foodDiaryBloc = BlocProvider.of<FoodDiaryBloc>(context);

    return BlocBuilder<FoodDiaryEvent, FoodDiaryState>(
      bloc: _foodDiaryBloc,
      builder: (BuildContext context, FoodDiaryState state) {
        if (state is FoodDiaryLoading) {
          return Scaffold(appBar: AppBar(title: Text("Diary loading")), body: Center(child: CircularProgressIndicator()), floatingActionButton: FAB());
        }
        if (state is FoodDiaryFailed) {
          return Scaffold(appBar: AppBar(title: Text("Diary failed")), body: Center(child: Text("Failed... ${state.errorMessage}")));
        }
        if (state is FoodDiaryLoaded) {
          return Scaffold(
            appBar: AppBar(title: Text("Diary")), // TODO: date!!
            body: Center(
              child: StreamBuilder<BuiltList<FoodDiaryDay>>(
                stream: state.foodDiaryDayStream,
//                initialData: BuiltList(), // would need to use if (snapshot.connectionState == ConnectionState.waiting) (no point)
                builder: (BuildContext context, AsyncSnapshot<BuiltList<FoodDiaryDay>> snapshot) {
                  // For debugging
//                  showSubscriptionErrorMessages(snapshot.connectionState, context);

                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }

                  return Column( // TODO: make component, pass on update
                    children: snapshot.data.map((day) =>
                      Column(
                        children: day.foodRecords.map((foodRecord) =>
                          FoodRecordTile(foodRecord) // TODO: pass on update
                        ).toList(),
                      )
                    ).toList()
                  );
                }
              )
            ),
            floatingActionButton: FAB(),
          );
        }
      }
    );
  }
}

class FoodRecordTile extends StatelessWidget {
  final FoodRecord foodRecord;

  FoodRecordTile(this.foodRecord);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(foodRecord.foodName),
      subtitle: Text("50 grams"),
      onTap: () {

      },
    );
  }
}


void _onWidgetDidBuild(Function callback) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    callback();
  });
}

class FAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeBloc _themeBloc = BlocProvider.of<ThemeBloc>(context);
    final FoodDiaryBloc _foodDiaryBloc = BlocProvider.of<FoodDiaryBloc>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _foodDiaryBloc.dispatch(AddFoodRecord((b) => b..foodRecord = FoodRecord((b) => b..foodName = "##@").toBuilder()));
//                _counterBloc.dispatch(CounterEvent.increment);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              _foodDiaryBloc.dispatch(LoadFoodRecordDays());
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.update),
            onPressed: () {
              _themeBloc.dispatch(ThemeEvent.toggle);
            },
          ),
        ),
      ],
    );
  }
}
