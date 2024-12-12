import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:iut_ecms/core/base/base_storage.dart';
import 'package:iut_ecms/domain/models/tokens/tokens.dart';

@LazySingleton()
class Storage {
  Storage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<Storage> create() async {
    await Hive.initFlutter();

    Hive.registerAdapter(TokensImplAdapter());

    final box = await Hive.openBox('storage');
    return Storage(box);
  }

  BaseStorage<Tokens> get tokens => BaseStorage(_box, 'tokens');

  BaseStorage<Tokens> get language => BaseStorage(_box, 'language');
}
