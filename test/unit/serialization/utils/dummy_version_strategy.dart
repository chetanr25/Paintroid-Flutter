import 'package:paintroid/core/json_serialization/versioning/serializer_version.dart';
import 'package:paintroid/core/json_serialization/versioning/version_strategy.dart';

class DummyVersionStrategy implements IVersionStrategy {
  final int pathCommandVersion;
  final int lineCommandVersion;
  final int catrobatImageVersion;
  final int squareShapeCommandVersion;
  final int circleShapeCommandVersion;
  final int sprayCommandVersion;

  DummyVersionStrategy({
    this.pathCommandVersion = SerializerVersion.PATH_COMMAND_VERSION,
    this.catrobatImageVersion = SerializerVersion.CATROBAT_IMAGE_VERSION,
    this.lineCommandVersion = SerializerVersion.LINE_COMMAND_VERSION,
    this.squareShapeCommandVersion =
        SerializerVersion.SQUARE_SHAPE_COMMAND_VERSION,
    this.circleShapeCommandVersion =
        SerializerVersion.CIRCLE_SHAPE_COMMAND_VERSION,
    this.sprayCommandVersion = SerializerVersion.SPRAY_COMMAND_VERSION,
  });

  @override
  int getCatrobatImageVersion() => catrobatImageVersion;

  @override
  int getPathCommandVersion() => pathCommandVersion;

  @override
  int getLineCommandVersion() => lineCommandVersion;

  @override
  int getSquareShapeCommandVersion() => squareShapeCommandVersion;

  @override
  int getCircleShapeCommandVersion() => circleShapeCommandVersion;

  @override
  int getSprayCommandVersion() => sprayCommandVersion;
}
