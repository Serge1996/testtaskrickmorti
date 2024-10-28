import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testtaskrickmorti/feature_character_detais/widget/MainSliverAppBar.dart';

import '../domain/entities/characterEntity.dart';
import '../gen/assets.gen.dart';

@RoutePage()
class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({required this.characterEntity, super.key});

  final CharacterEntity characterEntity;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
              SliverPersistentHeader(
                pinned: true,
                delegate: MainSliverAppBar(
                  expandedHeight: 275,
                  imgUrl: characterEntity.image,
                ),
              ),
            ],
            body: Column(
              children: [
                Row(
                  children: [
                    const DecoratedBox(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(Icons.info),
                      ),
                    ),
                    Column(
                      children: [
                        const Text('Name'),
                        Text(characterEntity.name),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: characterEntity.status == 'Alive'
                            ? SvgPicture.asset(Assets.icons.aliveIcon)
                            : characterEntity.status == 'Dead'
                                ? SvgPicture.asset(Assets.icons.deadIcon)
                                : SvgPicture.asset(Assets.icons.statusUnknown),
                      ),
                    ),
                    Column(
                      children: [
                        const Text('Status'),
                        Text(characterEntity.status),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    DecoratedBox(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: characterEntity.species == 'Alien'
                              ? SvgPicture.asset(Assets.icons.alienIcon)
                              : SvgPicture.asset(Assets.icons.humanIcon),
                        )),
                    Column(
                      children: [
                        const Text('Species'),
                        Text(characterEntity.species),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: characterEntity.gender == 'Female'
                            ? SvgPicture.asset(Assets.icons.femaleIcon)
                            : characterEntity.gender == 'Male'
                                ? SvgPicture.asset(Assets.icons.maleIcon)
                                : SvgPicture.asset(Assets.icons.genderUnknown),
                      ),
                    ),
                    Column(
                      children: [
                        const Text('Gender'),
                        Text(characterEntity.gender),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
