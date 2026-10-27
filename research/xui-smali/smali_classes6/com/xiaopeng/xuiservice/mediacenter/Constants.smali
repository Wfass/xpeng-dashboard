.class public Lcom/xiaopeng/xuiservice/mediacenter/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/Constants$LyricRequest;,
        Lcom/xiaopeng/xuiservice/mediacenter/Constants$Mode;,
        Lcom/xiaopeng/xuiservice/mediacenter/Constants$MediaLaunchPolicy;
    }
.end annotation


# static fields
.field public static final ACTION_MEDIA_SESSION_CUSTOM:Ljava/lang/String; = "com.xiaopeng.action_media_session_custom"

.field public static final ACTION_PASSENGER_BT_PRESSED:Ljava/lang/String; = "xiaopeng.bluetooth.avrcp.action.KEY_PRESSED"

.field public static final ACTION_START_MEDIA_PACKAGE:Ljava/lang/String; = "com.xiaopeng.media.session.START_PACKAGE"

.field public static final ACTION_XUI_MEDIA_RESUME:Ljava/lang/String; = "com.xiaopeng.xui.RESUME_MEDIA"

.field public static final ACTION_XUI_WELCOME:Ljava/lang/String; = "com.xiaopeng.xui.WELCOME_SOUND"

.field public static final CONTROL_PLAY_MODE:Ljava/lang/String; = "setMode"

.field public static final DELAY_LOAD_URI_BITMAP:I = 0x1f4

.field public static final DELAY_MEDIA_RESUME:I = 0xc8

.field public static final DELAY_PAUSE_BT_MEDIA:I = 0x1f4

.field public static final DELAY_REFRESH_TARGET:I = 0xfa

.field public static final DELAY_SEND_PENDING_INTENT:I = 0xfa

.field public static final DELAY_UPDATE_POSITION:I = 0x3e8

.field public static final KEY_CONTROL:Ljava/lang/String; = "Control"

.field public static final KEY_DOUBLE_VALUE:Ljava/lang/String; = "DoubleValue"

.field public static final KEY_IS_LIVE:Ljava/lang/String; = "isLive"

.field public static final KEY_LONG_VALUE:Ljava/lang/String; = "LongValue"

.field public static final KEY_LYRIC_INFO:Ljava/lang/String; = "lyricInfo"

.field public static final KEY_MODE_CHANGE_SETTINGS:Ljava/lang/String; = "setting_switch"

.field public static final KEY_PLAY_LIST:Ljava/lang/String; = "playList"

.field public static final KEY_PLAY_MODE:Ljava/lang/String; = "playMode"

.field public static final KEY_PLAY_SOURCE:Ljava/lang/String; = "playSource"

.field public static final KEY_PROP_MEDIA_PACKAGE:Ljava/lang/String; = "persist.sys.media.launch.packageName"

.field public static final KEY_START_POSITION:Ljava/lang/String; = "startPosition"

.field public static final KEY_TEXT_VALUE:Ljava/lang/String; = "TextValue"

.field public static final NAPA_DOLBY_MUSIC_START_PARAMS:Ljava/lang/String; = "appID=XPPlugin_DolbyMusic&page=XPPlugin_DolbyMusic.DolbyMusicMain"

.field public static final NAPA_MUSIC_START_PARAMS:Ljava/lang/String; = "appID=XPPlugin_MusicApp&page=MusicMainUI"

.field public static final PACKAGE_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PACKAGE_HI_CAR:Ljava/lang/String; = "com.huawei.dmsdpdevice"

.field public static final PACKAGE_XP_CAR_MEDIA:Ljava/lang/String; = "com.xiaopeng.carmedia"

.field public static final PACKAGE_XP_DEVICE_SHARE:Ljava/lang/String; = "com.xiaopeng.deviceshare"

.field public static final PACKAGE_XP_MUSIC:Ljava/lang/String; = "com.xiaopeng.musicradio"

.field public static final VALUE_MODE_CIRCLE:Ljava/lang/String; = "order"

.field public static final VALUE_MODE_RANDOM:Ljava/lang/String; = "random"

.field public static final VALUE_MODE_SINGLE:Ljava/lang/String; = "single"

.field public static final VALUE_PLAY_MODE_MUSIC:Ljava/lang/String; = "Music"

.field public static final VALUE_PLAY_MODE_VIDEO:Ljava/lang/String; = "Video"

.field public static final VISUALIZER_PROTECT_TIME:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXpPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 80
    const-string v0, "com.xiaopeng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
