import 'package:brick_core/core.dart';
import 'package:brick_sqlite/sqlite.dart';

/// This class and code is always generated.
/// It is included here as an illustration.
/// Sqlite adapters are generated by domains that utilize the brick_sqlite_generators package,
/// such as brick_offline_first_with_rest_build
class UserAdapter extends SqliteAdapter<User> {
  final tableName = "User";

  final fieldsToSqliteColumns = {
    'primaryKey': RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'name': RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'name',
      iterable: false,
      type: String,
    ),
  };

  primaryKeyByUniqueColumns(instance, executor) async => instance.primaryKey;

  fromSqlite(data, {required provider, repository}) async {
    return User(
      name: data['name'],
    );
  }

  toSqlite(instance, {required provider, repository}) async {
    return {
      'name': instance.name,
    };
  }
}

/// This value is always generated.
/// It is included here as an illustration.
/// Import it from `lib/app/brick.g.dart` in your application.
final dictionary = SqliteModelDictionary({
  User: UserAdapter(),
});

/// A model is unique to the end implementation (e.g. a Flutter app)
class User extends SqliteModel {
  final String? name;

  User({
    this.name,
  });
}

class MyRepository extends SingleProviderRepository<SqliteModel> {
  MyRepository()
      : super(
          SqliteProvider(
            "myApp.sqlite",
            modelDictionary: dictionary,
          ),
        );
}

void main() async {
  final repository = MyRepository();

  final users = await repository.get<User>();
  print(users);
}
