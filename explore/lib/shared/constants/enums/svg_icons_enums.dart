enum SvgIconsEnum {
  home_outlined("assets/icons/home_outlined.svg"),
  news_outlined("assets/icons/news_outlined.svg"),
  event_outlined("assets/icons/event_outlined.svg"),
  explore_outlined("assets/icons/explore_outlined.svg"),
  instagram_outlined("assets/icons/instagram_outlined.svg"),
  fb_outlined("assets/icons/fb_outlined.svg"),
  navigate_outlined("assets/icons/navigate_outlined.svg"),
  calendar_add_outlined("assets/icons/calendar_add_outlined.svg"),
  share_outlined("assets/icons/share_outlined.svg"),
  globe_outlined("assets/icons/globe_outlined.svg"),
  home_filled("assets/icons/home_filled.svg"),
  news_filled("assets/icons/news_filled.svg"),
  event_filled("assets/icons/event_filled.svg"),
  explore_filled("assets/icons/explore_filled.svg"),
  event_free("assets/icons/event_free.svg"),
  event_paid("assets/icons/event_paid.svg");

  final String path;

  const SvgIconsEnum(this.path);

  @override
  String toString() => path;
}
