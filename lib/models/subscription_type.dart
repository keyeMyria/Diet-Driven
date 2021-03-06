import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'subscription_type.g.dart';

class SubscriptionType extends EnumClass {

  //
  static const SubscriptionType all_access = _$all_access;

  //
  static const SubscriptionType diet_driven_monthly = _$diet_driven_monthly;

  //
  static const SubscriptionType diet_driven_yearly = _$diet_driven_yearly;

  static bool hasDietDrivenAccess(SubscriptionType subscriptionType) {
    return subscriptionType == all_access ||
            subscriptionType == diet_driven_monthly ||
            subscriptionType == diet_driven_yearly;
  }

  const SubscriptionType._(String name) : super(name);

  static BuiltSet<SubscriptionType> get values => _$subscriptionTypeValues;

  static SubscriptionType valueOf(String name) => _$subscriptionType(name);
}
