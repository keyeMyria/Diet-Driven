library navigation_state;

import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_driven/data/page.dart';
import 'package:diet_driven/util/built_firestore.dart';

part 'navigation_state.g.dart';

///
abstract class NavigationState implements Built<NavigationState, NavigationStateBuilder> {
  static Serializer<NavigationState> get serializer => _$navigationStateSerializer;


  //
  @BuiltValueField(serialize: false)
  Page get activePage;

  //
  Page get defaultPage;

  //
//  @BuiltValueField(serialize: false) // FIXME: No serializer for 'List<Page>
  BuiltList<Page> get bottomNavigation;

  //
  @BuiltValueField(serialize: false)
  @nullable
  Page get bottomNavigationPage;

  NavigationState._();
  factory NavigationState([updates(NavigationStateBuilder b)]) = _$NavigationState;
}

///
abstract class NavigationStateBuilder implements Builder<NavigationState, NavigationStateBuilder> {
  Page activePage = Page.diary;

  Page defaultPage = Page.diary;

  BuiltList<Page> bottomNavigation = BuiltList.from([Page.diary, Page.track, Page.diet, Page.goals, Page.settings]);

  @nullable // due to goTo being called form initApp
  Page bottomNavigationPage;

  factory NavigationStateBuilder() = _$NavigationStateBuilder;
  NavigationStateBuilder._();
}

/// TODO: just use generic UserDocument - no, still need to specify /navigation
abstract class NavigationStateDocument with FSDocument<NavigationState> implements Built<NavigationStateDocument, NavigationStateDocumentBuilder> {
  @nullable
  String get userId;

  @override
  DocumentReference get docRef => Firestore.instance.document("users/$userId/settings/navigation");

  NavigationStateDocument._();
  factory NavigationStateDocument([updates(NavigationStateDocumentBuilder b)]) = _$NavigationStateDocument;
}