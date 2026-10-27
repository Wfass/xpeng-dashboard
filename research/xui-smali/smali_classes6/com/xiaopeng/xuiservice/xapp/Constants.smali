.class public Lcom/xiaopeng/xuiservice/xapp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_ACTIVITY_CHANGED:Ljava/lang/String; = "com.xiaopeng.intent.action.ACTIVITY_CHANGED"

.field public static final ACTION_APPLET_LIST:Ljava/lang/String; = "com.xiaopeng.intent.action.SHOW_APPLET_LIST"

.field public static final ACTION_APP_LIST:Ljava/lang/String; = "com.xiaopeng.intent.action.SHOW_APP_LIST"

.field public static final ACTION_APP_STORE:Ljava/lang/String; = "com.xiaopeng.intent.action.SHOW_APP_STORE"

.field public static final ACTION_APP_UPDATE_DIALOG:Ljava/lang/String; = "com.xiaopeng.intent.action.SHOW_APP_UPDATE_DIALOG"

.field public static final ACTION_CLOSE_USER_MANUAL:Ljava/lang/String; = "com.xiaopeng.usermanual.ACTION_CLOSE"

.field public static final ACTION_DIALOG_CHANGED:Ljava/lang/String; = "com.xiaopeng.intent.action.XUI_DIALOG_CHANGED"

.field public static final ACTION_LAUNCH_USER_MANUAL:Ljava/lang/String; = "com.xiaopeng.usermanual.ACTION_LAUNCH"

.field public static final ACTION_SHOW_TOAST:Ljava/lang/String; = "com.xiaopeng.xui.intent.action.TOAST"

.field public static final ACTIVITY_MAIN_MAP:Ljava/lang/String; = "com.xiaopeng.montecarlo.MainActivity"

.field public static final APP_STORE_ACTION_ONLY_DOWNLOAD:I = 0x2

.field public static final APP_STORE_ACTION_ONLY_SHOW:I = 0x0

.field public static final APP_STORE_ACTION_SHOW_DOWNLOAD:I = 0x1

.field public static final CHANGE_STATE_TIME:I = 0x1388

.field public static final DELAY_GEAR_CHECK:I = 0x3e8

.field public static final DELAY_VIDEO_DEMAND:I = 0xfa

.field public static final DRIVER_SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode_0"

.field public static final EXTRA_APP_STORE_PACKAGE:Ljava/lang/String; = "com.xiaopeng.appstore.intent.extra.PACKAGE"

.field public static final EXTRA_APP_STORE_SCREEN:Ljava/lang/String; = "com.xiaopeng.appstore.intent.extra.SCREEN"

.field public static final EXTRA_APP_STORE_STATE:Ljava/lang/String; = "com.xiaopeng.appstore.intent.extra.STATE"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "android.intent.extra.COMPONENT"

.field public static final EXTRA_FLAGS:Ljava/lang/String; = "android.intent.extra.FLAGS"

.field public static final EXTRA_MINIPROGRAM:Ljava/lang/String; = "android.intent.extra.mini.PROGRAM"

.field public static final FADE_ALPHA:F = 0.5f

.field public static final FLAG_ACTIVITY_LAUNCH_HOME:I = 0x20000000

.field public static final FLAG_ACTIVITY_LAUNCH_PANEL:I = 0x100

.field public static final FLAG_MINI_PROG:I = 0x200

.field public static final HIDE_OR_FADE_TIME:I = 0x1388

.field public static final HIDE_QSPANEL_TIME:I = 0xc8

.field public static final HIGH_ALPHA:F = 0.9f

.field public static final KEY_AVAS_SPEAKER:Ljava/lang/String; = "avas_speaker"

.field public static final MAIN_DRIVER_SOUND_LOCATION:I = 0x1

.field public static final MAX_ACTIVITY_RECORD_NUM:I = 0x1f4

.field public static final MAX_TEXT_LINE_NUM:I = 0x2

.field public static final META_ACTIVITY_WINDOW_LEVEL:Ljava/lang/String; = "window_level"

.field public static final PACKAGE_AI_ASSISTANT:Ljava/lang/String; = "com.xiaopeng.aiassistant"

.field public static final PACKAGE_ALIPAY_AROME:Ljava/lang/String; = "com.alipay.arome.app"

.field public static final PACKAGE_APP_STORE:Ljava/lang/String; = "com.xiaopeng.appstore"

.field public static final PACKAGE_CAR_ACCOUNT:Ljava/lang/String; = "com.xiaopeng.caraccount"

.field public static final PACKAGE_CAR_CONTROL:Ljava/lang/String; = "com.xiaopeng.carcontrol"

.field public static final PACKAGE_CHANGBA:Ljava/lang/String; = "com.changba.sd"

.field public static final PACKAGE_LOGIC_HOME:Ljava/lang/String; = "com.xiaopeng.home"

.field public static final PACKAGE_MIGU:Ljava/lang/String; = "cn.cmvideo.car.play"

.field public static final PACKAGE_MONTECARLO:Ljava/lang/String; = "com.xiaopeng.montecarlo"

.field public static final PACKAGE_NAPA:Ljava/lang/String; = "com.xiaopeng.napa"

.field public static final PACKAGE_OTA:Ljava/lang/String; = "com.xiaopeng.ota"

.field public static final PACKAGE_QIYI_IV:Ljava/lang/String; = "com.qiyi.video.iv"

.field public static final PACKAGE_SYSTEM_APPS:[Ljava/lang/String;

.field public static final PACKAGE_THUNDER:Ljava/lang/String; = "com.thunder.carplay"

.field public static final PACKAGE_USERMANUAL:Ljava/lang/String; = "com.xiaopeng.usermanual"

.field public static final PACKAGE_YOUKU_CHILD:Ljava/lang/String; = "com.youkuchild.android.car"

.field public static final PACKAGE_YOUKU_IOT:Ljava/lang/String; = "com.youku.car"

.field public static final PASSENGER_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness_1"

.field public static final PASSENGER_SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode_1"

.field public static final PERMISSION_APP_SUPER_RUNNING:Ljava/lang/String; = "android.permission.SUPER_APPLICATION_RUNNING"

.field public static final PERMISSION_XPILOT_DENIED:I = 0x4

.field public static final URI_SHOW_APP_DETAIL:Ljava/lang/String; = "market://details?id="

.field public static final XP_PACKAGE_OVERLAY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    const-string v0, "com.xiaopeng.ota"

    const-string v1, "com.xiaopeng.carcontrol"

    const-string v2, "com.xiaopeng.aiassistant"

    const-string v3, "com.xiaopeng.appstore"

    const-string v4, "com.alipay.arome.app"

    const-string v5, "com.xiaopeng.usermanual"

    const-string v6, "com.xiaopeng.montecarlo"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/Constants;->PACKAGE_SYSTEM_APPS:[Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.xiaopeng.UVCCamera"

    const-string v2, "com.xiaopeng.accessin"

    const-string v3, "com.xiaopeng.deviceshare"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/Constants;->XP_PACKAGE_OVERLAY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
