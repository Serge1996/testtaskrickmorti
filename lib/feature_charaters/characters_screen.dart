import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testtaskrickmorti/app_router.gr.dart';
import 'package:testtaskrickmorti/data/models/character_response/character_response.dart';
import 'package:testtaskrickmorti/data/repositories/remote_character_repository.dart';
import 'package:testtaskrickmorti/domain/entities/characterEntity.dart';
import 'package:testtaskrickmorti/feature_charaters/store/character_store.dart';
import 'package:testtaskrickmorti/feature_charaters/widgets/empty_widget.dart';
import 'package:testtaskrickmorti/feature_charaters/widgets/item_card.dart';
import 'package:testtaskrickmorti/theme/colors.dart';

import '../data/models/characters_response/characters_response.dart';
import '../injection_container.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late final CharacterStore _characterStore;

  @override
  void initState() {
    _characterStore = sl.get<CharacterStore>();
    _characterStore.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: _characterStore.loading
                ? const Center(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        color: ColorPalette.accent,
                      ),
                    ),
                  )
                : _characterStore.products.value !=null
                    ? GridView.builder(
                        itemCount: _characterStore.products.value!.length,
                        itemBuilder: (_, index) => ItemCard(
                          onTap: () {
                            AutoRouter.of(context).push(
                              CharacterDetailsRoute(
                                characterEntity: CharacterEntity(
                                  id: _characterStore.products.value![index].id,
                                  name: _characterStore.products.value![index].name,
                                  status: _characterStore.products.value![index].status,
                                  species: _characterStore.products.value![index].species,
                                  type: _characterStore.products.value![index].type,
                                  gender: _characterStore.products.value![index].gender,
                                  image: _characterStore.products.value![index].image,
                                  isSelected: _characterStore.products.value![index].isSelected,
                                ),
                              ),
                            );
                          },
                          character: CharacterEntity(
                            id: _characterStore.products.value![index].id,
                            name: _characterStore.products.value![index].name,
                            status: _characterStore.products.value![index].status,
                            species: _characterStore.products.value![index].species,
                            type: _characterStore.products.value![index].type,
                            gender: _characterStore.products.value![index].gender,
                            image: _characterStore.products.value![index].image,
                            isSelected: _characterStore.products.value![index].isSelected,
                          ),
                        ),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 8 / 10,
                        ),
                      )
                    : EmptyWidget(onTap: () {
                        _characterStore.getData();
                      })),
      );
}
