import 'package:flutter/material.dart';

class AppColors{

  // Primary Colors
  static const Color primary           = Color(0xFF7C3A00); // Dark Brown
  static const Color primaryVariant   = Color(0xFFCA6F26); // Lighter Brown

  // Secondary Colors
  static const Color secondary         = Color(0xFFFCCD65); // Soft Yellow
  static const Color secondaryVariant  = Color(0xFFF1AF59); // Slightly deeper yellow

  //--------------------
  // static const Color primary        = Color(0xFF7D3800); // Dark brown – Primary theme, buttons, app bars
  // static const Color primaryVariant = Color(0xFF713B00); // Deep brown – Darker primary variant, selected states
  static const Color primaryVariant1 = Color(0xFFC86C23); // Deep brown – Darker primary variant, selected states
  // static const Color secondary      = Color(0xFFFCCD65); // Golden yellow – Secondary actions, highlights
  //static const Color secondaryVariant= Color(0xFFF1AF59); // Honey Yellow – Accent highlights, hover states

  static const Color background     = Color(0xFFF8F8DC); // Light cream – App background
  static const Color background1     = Color(0xFFF8F6DD); // Light cream – App background
  static const Color cardBackground = Color(0xFFF8DCB2); // Soft Peach – Card backgrounds
  static const Color surface        = Color(0xFFFFC068); // Bright Yellow – Surface color, banners

  static const Color textPrimary    = Color(0xFF4E5157); // Greyish Black – Primary text
  static const Color textSecondary  = Color(0xFFA1865B); // Muted Gold – Secondary text, descriptions
  static const Color disabledText   = Color(0xFFD79237); // Amber Brown – Disabled or hint text

  static const Color warning        = Color(0xFFD87730); // Toast orange – Toasts, alerts
//  static const Color error          = Color(0xFF7C3A00); // Bold Brown – Error states, warning icons
  static const Color success        = Color(0xFFC86C23); // Mid brown – Success indicators

  // static const Color borderColor    = Color(0xFFCA6F26); // Another mid brown – Card or input borders
  static const Color dividerColor   = Color(0xFFB9651F); // Burnt Orange – Dividers
  static const Color shadowColor    = Color(0xFF9D5618); // Bronze Orange – Shadows, elevation
  static const Color hintColor      = Color(0xFFA4530F); // Orange – Hints, inputs, subtle highlights

  static const Color backgroundColor     = Color(0xFFFFF8E1); // vanillaFrosting – Light screen background
  static const Color cardColor           = Color(0xFFFFECB3); // spongeCake – Card backgrounds
  static const Color primaryColor        = Color(0xFFD2691E); // caramelDrip – Primary color (AppBar, Buttons)
  static const Color textColor1           = Color(0xFF5D4037); // cocoaBrown – Titles and body text
  static const Color accentColor         = Color(0xFFFFB6C1); // strawberryPink – Accent (FABs, icons, tabs)
  static const Color secondaryBackground = Color(0xFFFFF0F5); // whippedCream – Modal, secondary bg
  static const Color focusColor          = Color(0xFF6A5ACD); // blueberryTopping – Selected state, focus
  static const Color darkTextColor       = Color(0xFF3E2723); // chocolateDark – Strong contrast text/shadows
  static const Color warningColor        = Color(0xFFFFF176); // lemonGlaze – Warnings, alerts
  static const Color infoColor           = Color(0xFFB2DFDB); // mintLayer – Info background, chips

  static const Color back = Color(0xFFFEF7FF);

// MAIN COLOR SETUP
  static const Color textColor          = Color(0xFF1E1E1E); // Primary Text – Titles, Body
  static const Color textColorSec          = Color(0xFF4E5157);
  static const Color textColorHover          = Color(0xFF6E6E6E);
// Secondary Text –

// ADDITIONAL / OPTIONAL COLORS


// static const Color bgPrimary       = Color(0xFFF8F6DD); // Light cream background – main background or card background
// static const Color textPrimary    = Color(0xFF7D3800); // Dark brown – primary text (headings/titles)
// static const Color accentGold     = Color(0xFFFCCD65); // Golden yellow – highlights, icons, or button accents
// static const Color accentOrange   = Color(0xFFA4530F); // Orange – buttons or call-to-action highlights
//
// static const Color brownLight     = Color(0xFFDF8935); // Light brown – secondary accents or hover states
// static const Color brownMedium1   = Color(0xFFC86C23); // Mid brown – elevated buttons or emphasized cards
// static const Color brownMedium2   = Color(0xFFCA6F26); // Another mid brown – warning labels or emphasized icons
// static const Color brownDeep1     = Color(0xFF713B00); // Deep brown – shadows or border outlines
// static const Color brownDeep2     = Color(0xFF723E00); // Another deep brown – dark backgrounds or footer
// static const Color toastColor     = Color(0xFFD87730); // Toast orange – toast messages, alerts, or status tags
//
// static const Color yellowHoney    = Color(0xFFF1AF59); // Honey Yellow – progress bars, subtle highlights
// static const Color brownAmber     = Color(0xFFD79237); // Amber Brown – chips, labels, and pill buttons
// static const Color yellowBright   = Color(0xFFFFC068); // Bright Yellow – icons or tag background
// static const Color orangeBurnt    = Color(0xFFB9651F); // Burnt Orange – warning highlights or icon background
// static const Color brownBold      = Color(0xFF7C3A00); // Bold Brown – active tabs or strong text emphasis
// static const Color greyDark       = Color(0xFF4E5157); // Greyish Black – body text, disabled states
// static const Color orangeBronze   = Color(0xFF9D5618); // Bronze Orange – card borders or hover background
// static const Color goldMuted      = Color(0xFFA1865B); // Muted Gold – secondary icons or input borders
// static const Color peachSoft      = Color(0xFFF8DCB2); // Soft Peach – backgrounds, card fill, or light section dividers

// static const Color primaryColor        = Color(0xFFFCCD65); // Golden yellow //Brand color, buttons, active icons
// static const Color secondaryColor      = Color(0xFFA4530F); // Orange
// static const Color backgroundColor     = Color(0xFFF8F6DD); // Light cream background
// static const Color cardBackground      = Color(0xFFF8DCB2); // Soft Peach
// static const Color appBarColor         = Color(0xFF7D3800); // Dark brown
// static const Color textPrimary         = Color(0xFF4E5157); // Greyish Black
// static const Color textSecondary       = Color(0xFFA1865B); // Muted Gold
// static const Color accentColor         = Color(0xFFF1AF59); // Honey Yellow
// static const Color highlightColor      = Color(0xFFFFC068); // Bright Yellow
// static const Color warningColor        = Color(0xFFD87730); // Toast orange
// static const Color successColor        = Color(0xFFD79237); // Amber Brown
// static const Color infoColor           = Color(0xFFDF8935); // Light brown
// static const Color darkAccent          = Color(0xFFB9651F); // Burnt Orange
// static const Color borderColor         = Color(0xFFCA6F26); // Another mid brown
// static const Color dividerColor        = Color(0xFFC86C23); // Mid brown
// static const Color iconColor           = Color(0xFF723E00); // Another deep brown
// static const Color iconColorDark       = Color(0xFF713B00); // Deep brown
// static const Color buttonColor         = Color(0xFF7C3A00); // Bold Brown
// static const Color bronzeColor         = Color(0xFF9D5618); // Bronze Orange


// static const Color cardBG = Color(0xFFF8F6DD); // Light cream background
// static const Color darkBrown  = Color(0xFF7D3800); // Dark brown
// static const Color golden     = Color(0xFFFCCD65); // Golden yellow
// static const Color orange     = Color(0xFFA4530F); // Orange
//
// static const Color lightBrown = Color(0xFFDF8935); // Light brown
// static const Color midBrown1  = Color(0xFFC86C23); // Mid brown
// static const Color midBrown2  = Color(0xFFCA6F26); // Another mid brown
// static const Color deepBrown1 = Color(0xFF713B00); // Deep brown
// static const Color deepBrown2 = Color(0xFF723E00); // Another deep brown
// static const Color toast      = Color(0xFFD87730); // Toast orange
//
// static const Color honeyYellow   = Color(0xFFF1AF59); // Honey Yellow
// static const Color amberBrown    = Color(0xFFD79237); // Amber Brown
// static const Color brightYellow  = Color(0xFFFFC068); // Bright Yellow
// static const Color burntOrange   = Color(0xFFB9651F); // Burnt Orange
// static const Color boldBrown     = Color(0xFF7C3A00); // Bold Brown
// static const Color greyishBlack  = Color(0xFF4E5157); // Greyish Black
// static const Color bronzeOrange  = Color(0xFF9D5618); // Bronze Orange
// static const Color mutedGold     = Color(0xFFA1865B); // Muted Gold
// static const Color softPeach     = Color(0xFFF8DCB2); // Soft Peach
}
