import 'package:brick_offline_first_abstract/annotations.dart';

final output = r'''
Future<OnlyStaticMembers> _$OnlyStaticMembersFromRest(Map<String, dynamic> data,
    {required RestProvider provider,
    OfflineFirstRepository? repository}) async {
  return OnlyStaticMembers();
}

Future<Map<String, dynamic>> _$OnlyStaticMembersToRest(
    OnlyStaticMembers instance,
    {required RestProvider provider,
    OfflineFirstRepository? repository}) async {
  return {};
}

Future<OnlyStaticMembers> _$OnlyStaticMembersFromSqlite(
    Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstRepository? repository}) async {
  return OnlyStaticMembers()..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$OnlyStaticMembersToSqlite(
    OnlyStaticMembers instance,
    {required SqliteProvider provider,
    OfflineFirstRepository? repository}) async {
  return {};
}
''';

@ConnectOfflineFirstWithRest()
class OnlyStaticMembers {
  // To ensure static members are not considered for serialization.
  static const answer = 42;
  static final reason = 42;

  static int get understand => 42;
}
