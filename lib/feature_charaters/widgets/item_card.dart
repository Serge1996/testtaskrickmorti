import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testtaskrickmorti/domain/entities/characterEntity.dart';
import 'package:testtaskrickmorti/gen/assets.gen.dart';
import 'package:testtaskrickmorti/theme/app_theme.dart';
import 'package:testtaskrickmorti/theme/colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.character, required this.onTap, super.key});

  final VoidCallback onTap;

  final CharacterEntity character;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 215,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: ColorPalette.whiteSmoke,
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: CachedNetworkImage(imageUrl: character.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: ColorPalette.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: character.isSelected
                                  ? SvgPicture.asset(Assets.icons.heartFilled)
                                  : SvgPicture.asset(Assets.icons.heartOutlined),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      character.name,
                      style: AppTheme.characterNameTextStyle,
                      maxLines: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
