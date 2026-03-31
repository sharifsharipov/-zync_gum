part of 'utils.dart';

int? findChildIndexCallbackKeyInt(Key key) {
  if (key is ObjectKey && key.value != null && key.value is int) {
    return key.value! as int;
  }
  return null;
}

sealed class AppUtils {
  AppUtils._();

  static const ScrollPhysics kScrollPhysics = AlwaysScrollableScrollPhysics(
    parent: BouncingScrollPhysics(),
  );

  /// sliver gap
  static const Widget kSliverGap0 = SliverToBoxAdapter(
    child: SizedBox.shrink(),
  );
  static const SliverGap kSliverGap8 = SliverGap(8);
  static const SliverGap kSliverGap16 = SliverGap(16);
  static const SliverGap kSliverGap24 = SliverGap(24);
  static const Widget kSliverSafetyPadBottom = SliverToBoxAdapter(
    child: SafeArea(
      left: false,
      right: false,
      child: SizedBox.shrink(),
    ),
  );

  /// box
  static const SizedBox kGap = SizedBox.shrink();
  static const Gap kGap2 = Gap(2);
  static const Gap kGap4 = Gap(4);
  static const Gap kGap6 = Gap(6);
  static const Gap kGap8 = Gap(8);
  static const Gap kGap12 = Gap(12);
  static const Gap kGap16 = Gap(16);
  static const Gap kGap24 = Gap(24);
  static const Gap kGap32 = Gap(32);
  static const Gap kGap36 = Gap(36);
  static const Gap kGap40 = Gap(40);

  /// divider
  static const Divider kDivider = Divider(height: 1, thickness: 1);
  static const Padding kPad16Divider = Padding(
    padding: EdgeInsets.only(left: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static const Padding kPadHor16Divider = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(height: 1, thickness: 1),
  );

  /// spacer
  static const Spacer kSpacer = Spacer();

  /// padding
  static const EdgeInsets kPaddingAll4 = EdgeInsets.all(4);
  static const EdgeInsets kPaddingAll6 = EdgeInsets.all(6);
  static const EdgeInsets kPaddingAll8 = EdgeInsets.all(8);
  static const EdgeInsets kPaddingAll10 = EdgeInsets.all(10);
  static const EdgeInsets kPaddingAll12 = EdgeInsets.all(12);
  static const EdgeInsets kPaddingAll16 = EdgeInsets.all(16);
  static const EdgeInsets kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const EdgeInsets kPaddingAll24 = EdgeInsets.all(24);
  static const EdgeInsets kPaddingHor4 = EdgeInsets.symmetric(horizontal: 4);
  static const EdgeInsets kPaddingHor6 = EdgeInsets.symmetric(horizontal: 6);
  static const EdgeInsets kPaddingHor10 = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets kPaddingHor12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets kPaddingVer8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets kPaddingVer12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets kPaddingVer16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets kPaddingHor32Ver20 = EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 20,
  );
  static const EdgeInsets kPaddingHor16Ver12 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
  static const EdgeInsets kPaddingHor16Ver4 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 4,
  );
  static const EdgeInsets kPaddingHor16Ver8 = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  );
  static const EdgeInsets kPaddingHor12Ver8 = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 8,
  );
  static const EdgeInsets kPaddingHor8Ver4 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 4,
  );
  static const EdgeInsets kPaddingHor8Ver2 = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 2,
  );
  static const EdgeInsets kPaddingHor10Ver4 = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 4,
  );
  static const EdgeInsets kPaddingLeft12Right6Ver8 = EdgeInsets.only(
    left: 12,
    right: 6,
    top: 8,
    bottom: 8,
  );

  /// border radius
  static const Radius kRadius = Radius.zero;
  static const Radius kRadius8 = Radius.circular(8);
  static const Radius kRadius12 = Radius.circular(12);
  static const BorderRadius kBorderRadius = BorderRadius.zero;
  static const BorderRadius kBorderRadius2 = BorderRadius.all(
    Radius.circular(2),
  );
  static const BorderRadius kBorderRadius4 = BorderRadius.all(
    Radius.circular(4),
  );
  static const BorderRadius kBorderRadius6 = BorderRadius.all(
    Radius.circular(6),
  );
  static const BorderRadius kBorderRadius8 = BorderRadius.all(
    Radius.circular(8),
  );
  static const BorderRadius kBorderRadius12 = BorderRadius.all(
    Radius.circular(12),
  );
  static const BorderRadius kBorderRadius16 = BorderRadius.all(
    Radius.circular(16),
  );
  static const BorderRadius kBorderTopRadius24 = BorderRadius.only(
    topLeft: Radius.circular(24),
    topRight: Radius.circular(24),
  );
  static const BorderRadius kBorderRadius24 = BorderRadius.all(
    Radius.circular(24),
  );
  static const BorderRadius kBorderRadius48 = BorderRadius.all(
    Radius.circular(48),
  );
  static const BorderRadius kBorderRadius64 = BorderRadius.all(
    Radius.circular(64),
  );
  static const BorderRadius kBorderRadiusTop16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );
  static const BorderRadius kBorderRadiusBottom16 = BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  );

  static const RoundedRectangleBorder kShapeZero = RoundedRectangleBorder();
  static const RoundedRectangleBorder kShapeTop8 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
  );
  static const RoundedRectangleBorder kShapeBottom8 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(8),
      bottomRight: Radius.circular(8),
    ),
  );
    static const RoundedRectangleBorder kShapeTop16= RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
    ),
  );
  static const RoundedRectangleBorder kShapeBottom16 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
  );
  static const RoundedRectangleBorder kShapeAll8 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  // static const kTabBarBoxDecoration = BoxDecoration(
  //   color: AppColors.bgGrey2,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBarBoxDecorationDark = BoxDecoration(
  //   color: ThemeColors.backgroundDark,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBoxDecoration = BoxDecoration(
  //   color: AppColors.white,
  //   borderRadius: kBorderRadius8,
  // );

  ///
  static const BoxConstraints kBoxConstraints24 = BoxConstraints.tightFor(
    width: 24,
    height: 24,
  );
}
