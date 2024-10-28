// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:testtaskrickmorti/domain/entities/characterEntity.dart' as _i5;
import 'package:testtaskrickmorti/feature_character_detais/character_details_screen.dart'
    as _i1;
import 'package:testtaskrickmorti/feature_charaters/characters_screen.dart'
    as _i2;
import 'package:testtaskrickmorti/feature_splash/splash_screen.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CharacterDetailsScreen(
          characterEntity: args.characterEntity,
          key: args.key,
        ),
      );
    },
    CharactersRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CharactersScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CharacterDetailsScreen]
class CharacterDetailsRoute
    extends _i4.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    required _i5.CharacterEntity characterEntity,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          CharacterDetailsRoute.name,
          args: CharacterDetailsRouteArgs(
            characterEntity: characterEntity,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static const _i4.PageInfo<CharacterDetailsRouteArgs> page =
      _i4.PageInfo<CharacterDetailsRouteArgs>(name);
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    required this.characterEntity,
    this.key,
  });

  final _i5.CharacterEntity characterEntity;

  final _i6.Key? key;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{characterEntity: $characterEntity, key: $key}';
  }
}

/// generated route for
/// [_i2.CharactersScreen]
class CharactersRoute extends _i4.PageRouteInfo<void> {
  const CharactersRoute({List<_i4.PageRouteInfo>? children})
      : super(
          CharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
