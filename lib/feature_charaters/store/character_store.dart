import 'package:mobx/mobx.dart';
import 'package:testtaskrickmorti/domain/entities/characterEntity.dart';
import 'package:testtaskrickmorti/domain/repositories/items_repository.dart';

part 'character_store.g.dart';

class CharacterStore = _CharacterStoreBase with _$CharacterStore;

abstract class _CharacterStoreBase with Store {
  _CharacterStoreBase(this._itemsRepositoryImpl);

  final ItemsRepositoryImpl _itemsRepositoryImpl;

  @observable
  ObservableFuture<List<CharacterEntity>> products = ObservableFuture.value(List.empty());

  @computed
  bool get loading => products.status == FutureStatus.pending;

  @computed
  bool get hasError => products.error != null;

  @action
  void getData() {
    products = _itemsRepositoryImpl.getAndCacheCharacterList().asObservable();
  }

  @action
  void setLike(String characterId) {
    _itemsRepositoryImpl.setLikeById(characterId);
  }

  @action
  void removeLike(String characterId) {
    _itemsRepositoryImpl.removeLikeById(characterId);
  }
}
