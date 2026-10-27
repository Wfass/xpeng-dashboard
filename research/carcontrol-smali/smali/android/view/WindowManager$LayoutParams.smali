.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$InputFeatureFlags;,
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SystemUiVisibilityFlags;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;,
        Landroid/view/WindowManager$LayoutParams$PrivateFlags;,
        Landroid/view/WindowManager$LayoutParams$SystemFlags;,
        Landroid/view/WindowManager$LayoutParams$Flags;,
        Landroid/view/WindowManager$LayoutParams$WindowType;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BLUR_BEHIND_RADIUS_CHANGED:I = 0x20000000

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final COLOR_MODE_CHANGED:I = 0x4000000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FIRST_XUI_APPLICATION_WINDOW:I = 0x32

.field public static final FIRST_XUI_SYSTEM_WINDOW:I = 0x834

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_FULLSCREEN:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final ID_AREA_IMMERSION:I = 0x67

.field public static final ID_AREA_LOGICAL:I = 0x65

.field public static final ID_AREA_PHYSICAL:I = 0x66

.field public static final ID_AREA_PRIMARY:I = 0xc9

.field public static final ID_AREA_SECONDARY:I = 0xca

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final INSET_FLAGS_CHANGED:I = 0x8000000

.field public static final INTENT_FLAG_LAUNCH_APPLET:I = 0x200

.field public static final INTENT_FLAG_LAUNCH_DEFAULT_HOME_PRIMARY:I = 0x20000000

.field public static final INTENT_FLAG_LAUNCH_DEFAULT_HOME_SECONDARY:I = 0x40000000

.field public static final INTENT_FLAG_LAUNCH_FLOATING:I = 0x80

.field public static final INTENT_FLAG_LAUNCH_FREEFORM:I = 0x4

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_IMMERSION:I = 0x10

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_LOGICAL:I = 0x40

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_PHYSICAL:I = 0x20

.field public static final INTENT_FLAG_LAUNCH_LAUNCHER:I = 0x2

.field public static final INTENT_FLAG_LAUNCH_PANEL:I = 0x100

.field public static final INTENT_FLAG_LAUNCH_SYSTEM:I = 0x10000000

.field public static final INTENT_FLAG_LAUNCH_VIRTUAL_HOME_PRIMARY:I = 0x1000000

.field public static final INTENT_FLAG_LAUNCH_VIRTUAL_HOME_SECONDARY:I = 0x2000000

.field public static final INVALID_WINDOW_TYPE:I = -0x1

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x3

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINIMAL_POST_PROCESSING_PREFERENCE_CHANGED:I = 0x10000000

.field public static final POSITION_AREA_DEFAULT:I = 0x0

.field public static final POSITION_AREA_FIRST:I = 0x1

.field public static final POSITION_AREA_SECOND:I = 0x2

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_MAX_DISPLAY_REFRESH_RATE:I = -0x80000000

.field public static final PREFERRED_MIN_DISPLAY_REFRESH_RATE:I = 0x40000000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_APPEARANCE_CONTROLLED:I = 0x4000000

.field public static final PRIVATE_FLAG_BEHAVIOR_CONTROLLED:I = 0x8000000

.field public static final PRIVATE_FLAG_COLOR_SPACE_AGNOSTIC:I = 0x1000000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_EXCLUDE_FROM_SCREEN_MAGNIFICATION:I = 0x200000

.field public static final PRIVATE_FLAG_FIT_INSETS_CONTROLLED:I = 0x10000000

.field public static final PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final PRIVATE_FLAG_FORCE_DRAW_BAR_BACKGROUNDS:I = 0x20000

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_SHOW_STATUS_BAR:I = 0x1000

.field public static final PRIVATE_FLAG_INSET_PARENT_FRAME_BY_IME:I = 0x40000000

.field public static final PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP:I = -0x80000000

.field public static final PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final PRIVATE_FLAG_NOT_MAGNIFIABLE:I = 0x400000

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_STATUS_FORCE_SHOW_NAVIGATION:I = 0x800000

.field public static final PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY:I = 0x8

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_TRUSTED_OVERLAY:I = 0x20000000

.field public static final PRIVATE_FLAG_USE_BLAST:I = 0x2000000

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I = 0x7f7

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_APPLICATION_UNDERLAY:I = 0x83f

.field public static final TYPE_AREA_IMMERSION:Ljava/lang/String; = "immersion"

.field public static final TYPE_AREA_LOGICAL:Ljava/lang/String; = "logical"

.field public static final TYPE_AREA_PHYSICAL:Ljava/lang/String; = "physical"

.field public static final TYPE_AREA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final TYPE_AREA_SECONDARY:Ljava/lang/String; = "secondary"

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_NOTIFICATION_SHADE:I = 0x7f8

.field public static final TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRESENTATION:I = 0x7f5

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_QS_DIALOG:I = 0x7f3

.field public static final TYPE_QUICK_PANEL:I = 0x846

.field public static final TYPE_SCREENSHOT:I = 0x7f4

.field public static final TYPE_SCREEN_BAR:I = 0x848

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_ADDITIONAL:I = 0x7f9

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_VUI:I = 0x843

.field public static final TYPE_VUI_DEFAULT:I = 0x841

.field public static final TYPE_VUI_OVERLAY:I = 0x842

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final TYPE_WATER_MARK:I = 0x847

.field public static final TYPE_WINDOW_OVERLAY:I = 0x845

.field public static final TYPE_XUI_APPLICATION:I = 0x32

.field public static final TYPE_XUI_DIALOG:I = 0x35

.field public static final TYPE_XUI_HOME:I = 0x33

.field public static final TYPE_XUI_NAVIGATION_BAR:I = 0x836

.field public static final TYPE_XUI_NOTIFICATION:I = 0x83e

.field public static final TYPE_XUI_OVERLAY:I = 0x34

.field public static final TYPE_XUI_STATUS_BAR:I = 0x835

.field public static final TYPE_XUI_SYSTEM_BAR_PANEL:I = 0x837

.field public static final TYPE_XUI_WALLPAPER:I = 0x840

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000

.field public static final WINDOW_FLAG_FULLSCREEN_IMMERSION:I = 0x10

.field public static final WINDOW_FLAG_FULLSCREEN_LOGICAL:I = 0x40

.field public static final WINDOW_FLAG_FULLSCREEN_PHYSICAL:I = 0x20

.field public static final WINDOW_FLAG_HIDE_NAVIGATION_BAR:I = 0x1000

.field public static final WINDOW_FLAG_HIDE_STATUS_BAR:I = 0x2000

.field public static final WINDOW_FLAG_WINDOWING_APPLET:I = 0x200

.field public static final WINDOW_FLAG_WINDOWING_DIALOG:I = 0x400

.field public static final WINDOW_FLAG_WINDOWING_FLOATING:I = 0x80

.field public static final WINDOW_FLAG_WINDOWING_FREEFORM:I = 0x4

.field public static final WINDOW_FLAG_WINDOWING_PANEL:I = 0x100


# instance fields
.field public accessibilityIdOfAnchor:J

.field public accessibilityTitle:Ljava/lang/CharSequence;

.field public alpha:F

.field public areaId:I

.field public areaType:Ljava/lang/String;

.field public buttonBrightness:F

.field public dimAmount:F

.field public displayId:I

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasSystemUiListeners:Z

.field public hideTimeoutMilliseconds:J

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field public final insetsFlags:Landroid/view/InsetsFlags;

.field public intentFlags:I

.field public layoutInDisplayCutoutMode:I

.field private mBlurBehindRadius:I

.field private mColorMode:I

.field private mCompatibilityParamsBackup:[I

.field private mFitInsetsIgnoringVisibility:Z

.field private mFitInsetsSides:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "BOTTOM"
            .end subannotation
        }
    .end annotation
.end field

.field private mFitInsetsTypes:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "STATUS_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "NAVIGATION_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "CAPTION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "MANDATORY_SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TAPPABLE_ELEMENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "WINDOW_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;

.field public mWindowContextToken:Landroid/os/IBinder;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

.field public parentType:I

.field public preferMinimalPostProcessing:Z

.field public preferredDisplayModeId:I

.field public preferredMaxDisplayRefreshRate:F

.field public preferredMinDisplayRefreshRate:F

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public preservePreviousSurfaceInsets:Z

.field public privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "COMPATIBLE_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_STATUS_BAR_VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "WILL_NOT_REPLACE_ON_RELAUNCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "EXCLUDE_FROM_SCREEN_MAGNIFICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "NOT_MAGNIFIABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "STATUS_FORCE_SHOW_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "COLOR_SPACE_AGNOSTIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "USE_BLAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "APPEARANCE_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "BEHAVIOR_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FIT_INSETS_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "INSET_PARENT_FRAME_BY_IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERCEPT_GLOBAL_DRAG_AND_DROP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public providedInternalImeInsets:Landroid/graphics/Insets;

.field public providedInternalInsets:Landroid/graphics/Insets;

.field public providesInsetsTypes:[I

.field public receiveInsetsIgnoringZOrder:Z

.field public resizeBounds:Landroid/graphics/Rect;

.field public resizing:Z

.field public rotationAnimation:I

.field public screenBrightness:F

.field public screenId:I

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public token:Landroid/os/IBinder;

.field public touchRegion:Landroid/graphics/Rect;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public userId:I

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public windowFlags:I

.field public windowToken:Ljava/lang/String;

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4040
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v0, -0x1

    .line 3762
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 995
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    .line 1645
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v2, ""

    .line 1647
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 3008
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3028
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 3064
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 3126
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    .line 3463
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    .line 3763
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3764
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v0, -0x1

    .line 3768
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 995
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    .line 1645
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v2, ""

    .line 1647
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 3008
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3028
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 3064
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 3126
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    .line 3463
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3769
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3770
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    const/4 v0, -0x1

    .line 3774
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 995
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    .line 1645
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v2, ""

    .line 1647
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 3008
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3028
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 3064
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 3126
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    .line 3463
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3775
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3776
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3777
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    const/4 v0, -0x1

    .line 3781
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 995
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    .line 1645
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v2, ""

    .line 1647
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 3008
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3028
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 3064
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 3126
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v3, -0x1

    .line 3463
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance v0, Landroid/view/InsetsFlags;

    invoke-direct {v0}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3782
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3783
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3784
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 5

    .line 3788
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 995
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    const/4 p2, -0x1

    .line 1645
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v0, ""

    .line 1647
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 3008
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3028
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 3064
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v0, 0x0

    .line 3126
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v1, -0x1

    .line 3463
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance p2, Landroid/view/InsetsFlags;

    invoke-direct {p2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3789
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3790
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3791
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 5

    .line 3796
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 995
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    const/4 p2, -0x1

    .line 1645
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v0, ""

    .line 1647
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 3008
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3028
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 3064
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v0, 0x0

    .line 3126
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v1, -0x1

    .line 3463
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance p2, Landroid/view/InsetsFlags;

    invoke-direct {p2}, Landroid/view/InsetsFlags;-><init>()V

    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 3797
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3798
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3799
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3800
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3801
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 4052
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/4 v0, 0x0

    .line 995
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1003
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1644
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    const/4 v1, -0x1

    .line 1645
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 1646
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    const-string v2, ""

    .line 1647
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 1648
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 1649
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 1650
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 1651
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 1652
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 1653
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 1654
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 1655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 2979
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    .line 3008
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3028
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3035
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 3064
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3072
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 3120
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x0

    .line 3126
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3137
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 3143
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3153
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3284
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v4, -0x1

    .line 3463
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 3472
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 3495
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3523
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 3535
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 3545
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 3554
    new-instance v1, Landroid/view/InsetsFlags;

    invoke-direct {v1}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 3590
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3610
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3612
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3632
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 3640
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4185
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 4828
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4053
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4054
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4056
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4057
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4058
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4059
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4060
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4062
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4063
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 4064
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 4065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4067
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4068
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4069
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4070
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4072
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4073
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4074
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4075
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4077
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 4078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 4079
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 4080
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 4081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 4082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 4083
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 4084
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4085
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 4087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 4088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 4089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 4090
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 4091
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 4092
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4093
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4094
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 4095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4097
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    .line 4098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 4099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    .line 4100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    .line 4101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    .line 4102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    .line 4103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 4104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 4105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    .line 4106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    .line 4107
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    .line 4108
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    .line 4110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 4112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 4113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 4120
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 4121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 4123
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    .line 4124
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    .line 4125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 4127
    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 4128
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    :cond_1
    return-void
.end method

.method private checkNonRecursiveParams()V
    .locals 2

    .line 3750
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 3753
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3754
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3755
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params cannot contain params recursively."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static inputFeatureToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 4949
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DISABLE_USER_ACTIVITY"

    return-object p0

    :cond_1
    const-string p0, "NO_INPUT_CHANNEL"

    return-object p0

    :cond_2
    const-string p0, "DISABLE_POINTER_GESTURES"

    return-object p0
.end method

.method public static isSystemAlertWindowType(I)Z
    .locals 1

    const/16 v0, 0x7d2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 4866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "always"

    return-object p0

    :cond_1
    const-string p0, "never"

    return-object p0

    :cond_2
    const-string/jumbo p0, "shortEdges"

    return-object p0

    :cond_3
    const-string p0, "default"

    return-object p0
.end method

.method public static mayUseInputMethod(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static rotationAnimationToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 4936
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SEAMLESS"

    return-object p0

    :cond_1
    const-string p0, "JUMPCUT"

    return-object p0

    :cond_2
    const-string p0, "CROSSFADE"

    return-object p0

    :cond_3
    const-string p0, "ROTATE"

    return-object p0

    :cond_4
    const-string p0, "UNSPECIFIED"

    return-object p0
.end method

.method private static softInputModeToString(I)Ljava/lang/String;
    .locals 5

    .line 4871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0xf

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eqz v1, :cond_5

    const-string/jumbo v4, "state="

    .line 4874
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    .line 4892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "always_visible"

    .line 4889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "visible"

    .line 4886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "always_hidden"

    .line 4883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "hidden"

    .line 4880
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "unchanged"

    .line 4877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4895
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v1, p0, 0xf0

    if-eqz v1, :cond_9

    const-string v4, "adjust="

    .line 4899
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_7

    const/16 v4, 0x30

    if-eq v1, v4, :cond_6

    .line 4911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "nothing"

    .line 4908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v1, "pan"

    .line 4905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "resize"

    .line 4902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4914
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_a

    const-string p0, "forwardNavigation"

    .line 4917
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4919
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method backup()V
    .locals 3

    .line 4802
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4805
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    :cond_0
    const/4 v1, 0x0

    .line 4807
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 4808
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4809
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 4810
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4194
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_1

    .line 4195
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, 0x1

    .line 4198
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_2

    .line 4199
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    or-int/lit8 v0, v0, 0x1

    .line 4202
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_3

    .line 4203
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    or-int/lit8 v0, v0, 0x1

    .line 4206
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_4

    .line 4207
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    or-int/lit8 v0, v0, 0x1

    .line 4210
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 4211
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    or-int/lit8 v0, v0, 0x1

    .line 4214
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 4215
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    or-int/lit8 v0, v0, 0x1

    .line 4218
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 4219
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    or-int/lit8 v0, v0, 0x1

    .line 4222
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    .line 4223
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    or-int/lit8 v0, v0, 0x1

    .line 4226
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_9

    .line 4227
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    or-int/lit8 v0, v0, 0x2

    .line 4230
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_b

    xor-int/2addr v1, v2

    const/high16 v3, 0xc000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 4235
    :cond_a
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x4

    .line 4238
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    if-eq v1, v2, :cond_c

    .line 4239
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v3

    .line 4242
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_d

    .line 4243
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v0, v0, 0x200

    .line 4246
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_e

    .line 4247
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int/lit8 v0, v0, 0x1

    .line 4250
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_f

    .line 4251
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x1

    .line 4254
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_10

    .line 4255
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    or-int/lit8 v0, v0, 0x8

    .line 4258
    :cond_10
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_11

    .line 4259
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    or-int/lit8 v0, v0, 0x10

    .line 4262
    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_12

    .line 4265
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4267
    :cond_12
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    if-nez v1, :cond_13

    .line 4270
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4272
    :cond_13
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 4275
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4277
    :cond_14
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    .line 4279
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    or-int/lit8 v0, v0, 0x40

    .line 4282
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_16

    .line 4283
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    or-int/lit16 v0, v0, 0x80

    .line 4286
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    .line 4287
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    or-int/lit8 v0, v0, 0x20

    .line 4290
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    .line 4291
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    or-int/lit16 v0, v0, 0x800

    .line 4294
    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19

    .line 4295
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    or-int/lit16 v0, v0, 0x2000

    .line 4298
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_1a

    .line 4299
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit16 v0, v0, 0x1000

    .line 4303
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_1b

    .line 4304
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    or-int/lit16 v0, v0, 0x400

    .line 4308
    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1c

    .line 4309
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 4313
    :cond_1c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_1d

    .line 4314
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 4318
    :cond_1d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 4319
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 4323
    :cond_1e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    .line 4324
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 4328
    :cond_1f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v4, :cond_21

    .line 4330
    :cond_20
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 4331
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    .line 4335
    :cond_21
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_22

    .line 4336
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 4340
    :cond_22
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const/high16 v4, 0x10000

    if-eq v1, v2, :cond_23

    .line 4341
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v0, v4

    .line 4345
    :cond_23
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v5, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_24

    .line 4346
    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 4350
    :cond_24
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_25

    .line 4351
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    or-int/2addr v0, v2

    .line 4355
    :cond_25
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v5, :cond_26

    .line 4356
    iput-boolean v5, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    or-int/2addr v0, v2

    .line 4360
    :cond_26
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eq v1, v5, :cond_27

    .line 4361
    iput-boolean v5, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    or-int/2addr v0, v2

    .line 4365
    :cond_27
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v5, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v5, :cond_28

    .line 4366
    iput-boolean v5, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    or-int/2addr v0, v2

    .line 4370
    :cond_28
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v5, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_29

    .line 4371
    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 4375
    :cond_29
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 4378
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 4382
    :cond_2a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eq v1, v2, :cond_2b

    .line 4383
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 4388
    :cond_2b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eq v1, v2, :cond_2c

    .line 4389
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    or-int/2addr v0, v3

    .line 4392
    :cond_2c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    if-eq v1, v2, :cond_2d

    .line 4393
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    or-int/2addr v0, v3

    .line 4396
    :cond_2d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->parentType:I

    if-eq v1, v2, :cond_2e

    .line 4397
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    or-int/lit8 v0, v0, 0x2

    .line 4400
    :cond_2e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->userId:I

    if-eq v1, v2, :cond_2f

    .line 4401
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    or-int/lit8 v0, v0, 0x1

    .line 4404
    :cond_2f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->areaId:I

    if-eq v1, v2, :cond_30

    .line 4405
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    or-int/lit8 v0, v0, 0x1

    .line 4408
    :cond_30
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    if-eq v1, v2, :cond_31

    .line 4409
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    .line 4412
    :cond_31
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenId:I

    if-eq v1, v2, :cond_32

    .line 4413
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    or-int/lit8 v0, v0, 0x1

    .line 4416
    :cond_32
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->displayId:I

    if-eq v1, v2, :cond_33

    .line 4417
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    or-int/lit8 v0, v0, 0x1

    .line 4420
    :cond_33
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    if-eq v1, v2, :cond_34

    .line 4421
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    .line 4424
    :cond_34
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    if-eq v1, v2, :cond_35

    .line 4425
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    or-int/lit8 v0, v0, 0x1

    .line 4428
    :cond_35
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    if-eq v1, v2, :cond_36

    .line 4429
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    or-int/lit8 v0, v0, 0x1

    .line 4432
    :cond_36
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    if-eq v1, v2, :cond_37

    .line 4433
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    or-int/2addr v0, v4

    .line 4438
    :cond_37
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eq v1, v2, :cond_38

    .line 4439
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 4443
    :cond_38
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eq v1, v2, :cond_39

    .line 4444
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 4449
    :cond_39
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4451
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const/high16 v3, 0x8000000

    if-eq v1, v2, :cond_3a

    .line 4452
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v0, v3

    .line 4456
    :cond_3a
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eq v1, v2, :cond_3b

    .line 4457
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    or-int/2addr v0, v3

    .line 4461
    :cond_3b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eq v1, v2, :cond_3c

    .line 4462
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    or-int/lit8 v0, v0, 0x1

    .line 4466
    :cond_3c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-eq v1, v2, :cond_3d

    .line 4467
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    or-int/lit8 v0, v0, 0x1

    .line 4471
    :cond_3d
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v1, v2, :cond_3e

    .line 4472
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    or-int/lit8 v0, v0, 0x1

    .line 4476
    :cond_3e
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 4477
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    or-int/lit8 v0, v0, 0x1

    .line 4481
    :cond_3f
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 4482
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    or-int/lit8 v0, v0, 0x1

    .line 4486
    :cond_40
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 4487
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    or-int/lit8 v0, v0, 0x1

    .line 4491
    :cond_41
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 4492
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 4493
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    or-int/lit8 v0, v0, 0x1

    :cond_42
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Contents of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Debug"

    .line 4503
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 4504
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4505
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 4747
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4748
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4749
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4750
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4751
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4752
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4753
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-wide v1, 0x10200000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4754
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const-wide v1, 0x10200000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4755
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-wide v1, 0x10500000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4756
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4757
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-wide v1, 0x10e0000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4758
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-wide v1, 0x1050000000bL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4759
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-wide v1, 0x1020000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4760
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-wide v1, 0x1020000000dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4761
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const-wide v1, 0x1020000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4762
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-wide v1, 0x10e0000000fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4763
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const-wide v1, 0x10200000010L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4764
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const-wide v1, 0x10500000011L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4765
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    const-wide v1, 0x10800000012L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4766
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide v1, 0x10d00000013L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4767
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide v2, 0x10300000014L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4768
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const-wide v1, 0x10e00000017L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4769
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-wide v1, 0x10d00000018L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4770
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-wide v1, 0x10d0000001aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4771
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-wide v1, 0x10d0000001bL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4772
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    const-wide v1, 0x10d0000001cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4773
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    const-wide v1, 0x10d0000001dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4774
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    const-wide v1, 0x10d0000001eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4775
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-wide v1, 0x10d0000001fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4776
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-wide v1, 0x10d00000020L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4777
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    const-wide v1, 0x10800000021L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4778
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpDimensions(Ljava/lang/StringBuilder;)V
    .locals 5

    const/16 v0, 0x28

    .line 4520
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4521
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 4522
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4523
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")("

    .line 4524
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4525
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string/jumbo v1, "wrap"

    const-string v2, "fill"

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 4526
    :cond_1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4525
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    .line 4527
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4528
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 4529
    :cond_3
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4528
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4530
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 4833
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4835
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4836
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4837
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const-string v1, "horizontalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 4838
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const-string/jumbo v1, "verticalWeight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 4839
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 4840
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public getBlurBehindRadius()I
    .locals 1

    .line 3907
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return v0
.end method

.method public getColorMode()I
    .locals 1

    .line 3862
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public getFitInsetsSides()I
    .locals 1

    .line 3738
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    return v0
.end method

.method public getFitInsetsTypes()I
    .locals 1

    .line 3731
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 3812
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getUserActivityTimeout()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3919
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public final getWindowContextToken()Landroid/os/IBinder;
    .locals 1

    .line 3950
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isFitInsetsIgnoringVisibility()Z
    .locals 1

    .line 3746
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 2

    .line 4849
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 4960
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemApplicationOverlay()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3723
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method restore()V
    .locals 2

    .line 4819
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4821
    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    .line 4822
    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x2

    .line 4823
    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x3

    .line 4824
    aget v0, v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2

    .line 4786
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4787
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4788
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 4789
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4791
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 4792
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public setBlurBehindRadius(I)V
    .locals 0

    .line 3898
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return-void
.end method

.method public setColorMode(I)V
    .locals 0

    .line 3851
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return-void
.end method

.method public setFitInsetsIgnoringVisibility(Z)V
    .locals 1

    .line 3678
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 3679
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public setFitInsetsSides(I)V
    .locals 1

    .line 3668
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 3669
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public setFitInsetsTypes(I)V
    .locals 1

    .line 3657
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 3658
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public final setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 5

    .line 3820
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-nez p1, :cond_0

    .line 3828
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3830
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 3831
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 3832
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 3833
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 3834
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3830
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3836
    :goto_0
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 3837
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    return-void
.end method

.method public setSystemApplicationOverlay(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    .line 3706
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 3708
    :cond_0
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3808
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTrustedOverlay()V
    .locals 2

    .line 3693
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3913
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-void
.end method

.method public final setWindowContextToken(Landroid/os/IBinder;)V
    .locals 0

    .line 3931
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 4513
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 4537
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 4538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4539
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 4540
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const-string v2, " hm="

    .line 4541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4542
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4544
    :cond_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const-string v2, " vm="

    .line 4545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4546
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4548
    :cond_1
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v2, :cond_2

    const-string v2, " gr="

    .line 4549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    :cond_2
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v4, 0x7d

    if-eqz v2, :cond_3

    const-string v2, " sim={"

    .line 4553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4555
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4557
    :cond_3
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v2, :cond_4

    const-string v2, " layoutInDisplayCutoutMode="

    .line 4558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4559
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, " ty="

    .line 4561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v5, "type"

    invoke-static {v0, v5, v2}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    const-string v2, " fmt="

    .line 4564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4565
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4567
    :cond_5
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_6

    const-string v2, " wanim=0x"

    .line 4568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4571
    :cond_6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v5, :cond_7

    const-string v2, " or="

    .line 4572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4573
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4575
    :cond_7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_8

    const-string v2, " alpha="

    .line 4576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4577
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4579
    :cond_8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_9

    const-string v2, " sbrt="

    .line 4580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4581
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4583
    :cond_9
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    const-string v2, " bbrt="

    .line 4584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4587
    :cond_a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v2, :cond_b

    const-string v2, " rotAnim="

    .line 4588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4589
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4591
    :cond_b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    const-string v2, " preferredRefreshRate="

    .line 4592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4593
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4595
    :cond_c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_d

    const-string v2, " preferredDisplayMode="

    .line 4596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4599
    :cond_d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    const-string v2, " preferredMinDisplayRefreshRate="

    .line 4600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4603
    :cond_e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    const-string v2, " preferredMaxDisplayRefreshRate="

    .line 4604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4605
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4607
    :cond_f
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v2, :cond_10

    const-string v2, " sysuil="

    .line 4608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4609
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4611
    :cond_10
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v2, :cond_11

    const-string v2, " if="

    .line 4612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->inputFeatureToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    :cond_11
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_12

    const-string v2, " userActivityTimeout="

    .line 4615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4617
    :cond_12
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_13

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_15

    :cond_13
    const-string v2, " surfaceInsets="

    .line 4620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4621
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v2, :cond_14

    const-string v2, " (manual)"

    .line 4622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4624
    :cond_14
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v2, :cond_15

    const-string v2, " (!preservePreviousSurfaceInsets)"

    .line 4625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4628
    :cond_15
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v2, :cond_16

    const-string v2, " receive insets ignoring z-order"

    .line 4629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4631
    :cond_16
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v2, :cond_17

    const-string v2, " colorMode="

    .line 4632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    :cond_17
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eqz v2, :cond_18

    const-string v2, " preferMinimalPostProcessing="

    .line 4635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4636
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4638
    :cond_18
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eqz v2, :cond_19

    const-string v2, " blurBehindRadius="

    .line 4639
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4640
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4642
    :cond_19
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4643
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v6, "flags"

    .line 4644
    invoke-static {v0, v6, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4643
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4645
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v2, :cond_1a

    .line 4646
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4647
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pfl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v6, "privateFlags"

    invoke-static {v0, v6, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4650
    :cond_1a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string v3, "mSystemUiVisibility"

    if-eqz v2, :cond_1b

    .line 4651
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4652
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  sysui="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v6, Landroid/view/View;

    iget v7, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v6, v3, v7}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4655
    :cond_1b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v2, :cond_1c

    .line 4656
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  vsysui="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v6, Landroid/view/View;

    iget v7, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v6, v3, v7}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4661
    :cond_1c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    if-eq v2, v5, :cond_1d

    .line 4662
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4663
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4665
    :cond_1d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    if-eq v2, v5, :cond_1e

    .line 4666
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4667
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  areaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4669
    :cond_1e
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 4670
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  areaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    :cond_1f
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    if-eq v2, v5, :cond_20

    .line 4674
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4677
    :cond_20
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    if-eq v2, v5, :cond_21

    .line 4678
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4679
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4681
    :cond_21
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    if-eqz v2, :cond_22

    .line 4682
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  windowFlags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4685
    :cond_22
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    if-eqz v2, :cond_23

    .line 4686
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4687
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  intentFlags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4690
    :cond_23
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    if-eqz v2, :cond_24

    .line 4691
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4692
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  apr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v5, v5, Landroid/view/InsetsFlags;->appearance:I

    const-string v6, "appearance"

    invoke-static {v3, v6, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4695
    :cond_24
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eqz v2, :cond_25

    .line 4696
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4697
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bhv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/InsetsFlags;

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v5, v5, Landroid/view/InsetsFlags;->behavior:I

    const-string v6, "behavior"

    invoke-static {v3, v6, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4700
    :cond_25
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eqz v2, :cond_26

    .line 4701
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitTypes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    const-string v5, "mFitInsetsTypes"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4705
    :cond_26
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    if-eq v2, v3, :cond_27

    .line 4706
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4707
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  fitSides="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    const-string v5, "mFitInsetsSides"

    invoke-static {v0, v5, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    :cond_27
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eqz v0, :cond_28

    .line 4711
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4712
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  fitIgnoreVis"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    :cond_28
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    .line 4715
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  insetsTypes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 4717
    :goto_0
    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2a

    if-lez v0, :cond_29

    .line 4718
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4719
    :cond_29
    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    aget v5, v5, v0

    invoke-static {v5}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4722
    :cond_2a
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, " providedInternalInsets="

    .line 4723
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4724
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4726
    :cond_2b
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, " providedInternalImeInsets="

    .line 4727
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4728
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4730
    :cond_2c
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2e

    array-length v0, v0

    if-eqz v0, :cond_2e

    .line 4731
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4732
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  paramsForRotation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    :goto_1
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length p1, p1

    if-ge v3, p1, :cond_2e

    if-lez v3, :cond_2d

    .line 4734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4735
    :cond_2d
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4739
    :cond_2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4740
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 3958
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3959
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3960
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3961
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3962
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3963
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3964
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3965
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3966
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3967
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3968
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3969
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3970
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3971
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3972
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3973
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3974
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3975
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3976
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3977
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3978
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3979
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3980
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3981
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3982
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3983
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3984
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3985
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3986
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3987
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3989
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3991
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3992
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3994
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3995
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3996
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3997
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3998
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3999
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4000
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4002
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4004
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->parentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4005
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4006
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->areaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4007
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4008
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4009
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4011
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->resizing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4012
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->resizeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4013
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->touchRegion:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4015
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4016
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4017
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4018
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4019
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4020
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4021
    iget-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4022
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4023
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz p2, :cond_0

    .line 4024
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4025
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 4027
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4029
    :goto_0
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:Landroid/graphics/Insets;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Insets;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4030
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:Landroid/graphics/Insets;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Insets;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4031
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_1

    .line 4032
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 4033
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 4036
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
