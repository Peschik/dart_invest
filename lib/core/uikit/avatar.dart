import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_study/app/theme/app_colors.dart';

enum AvatarSize { big }

final class Avatar extends StatelessWidget {
  final String name;
  final Color? fallbackColor;
  final String? imageUrl;
  final AvatarSize size;

  const Avatar({
    super.key,
    required this.name,
    this.fallbackColor,
    this.imageUrl,
    this.size = AvatarSize.big,
  });

  double get _side {
    switch (size) {
      case AvatarSize.big:
        return 32;
    }
  }

  double get _radius => _side * 0.22;

  String? _buildImageUrl() {
    final url = imageUrl?.trim();

    if (url == null || url.isEmpty) {
      return null;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) return null;

    final path = uri.path;
    if (path.endsWith('.svg')) {
      final newPath = '${path.substring(0, path.length - 4)}--$size.svg';

      return uri.replace(path: newPath).toString();
    } else {
      return uri.toString();
    }
  }

  String _firstLetter() {
    final value = name.trim();
    if (value.isEmpty) return '?';

    return value.characters.first.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final url = _buildImageUrl();
    return SizedBox(
      width: _side,
      height: _side,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(_radius),
        child: url == null ? _fallback(context) : _networkImage(url, context),
      ),
    );
  }

  Widget _fallback(BuildContext context) {
    return Container(
      width: _side,
      height: _side,
      alignment: Alignment.center,
      color: fallbackColor ?? context.colors.profit,
      child: Text(
        _firstLetter(),
        style: TextStyle(
          color: context.colors.onSurface,
          fontSize: _side * 0.4,
          fontWeight: FontWeight.w700,
          height: 1.0,
        ),
      ),
    );
  }

  Widget _networkImage(String url, BuildContext context) {
    return SvgPicture.network(
      url,
      width: _side,
      height: _side,
      fit: BoxFit.contain,
      placeholderBuilder: (_) => _fallback(context),
      errorBuilder: (_, __, ___) => _fallback(context),
    );
  }
}
