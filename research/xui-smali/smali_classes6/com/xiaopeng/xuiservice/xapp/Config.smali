.class public Lcom/xiaopeng/xuiservice/xapp/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "xp_car_setting_syn"

.field public static final AVAS_STREAM:I = 0xb

.field public static final BRIGHTNESS_DETAL_SPEECH:I = 0xa

.field public static final BRIGHTNESS_TO_MAX_PROGRESS:I = 0x64

.field public static final BRIGHTNESS_TO_MAX_VALUE:I

.field public static final BRIGHTNESS_TO_MIN_PROGRESS:I = 0x1

.field public static final BRIGHTNESS_TO_MIN_VALUE:I = 0x1

.field public static final BURIED_POINT_TIME:I = 0xbb8

.field public static final CALL_STREAM:I = 0x0

.field public static final CHECK_APP_ONLINE_STATUS:Z

.field public static final CONFIG_ENABLE:Ljava/lang/String; = "1"

.field public static final CONFIG_SHOW:Ljava/lang/String; = "1"

.field public static CheckPermissionBeforeStartApplication:Z = false

.field public static CloseDialogBeforeStartApplication:Z = false

.field public static ECHO_VOLUME_MAX:I = 0x0

.field public static ECHO_VOLUME_MIN:I = 0x0

.field public static final GAME_ANGLE_M:I

.field public static final ICM_BRIGHTNESS_DETAL_SPEECH:I = 0xa

.field public static final LOW_SPEED_VOLUME_DEFAULT:I = 0x59

.field public static final MEDIA_STREAM:I = 0x3

.field public static final PASSENGER_BT_STREAM:I = 0xd

.field public static final SECRET_NO_PUB:Ljava/lang/String; = "Z9hHgh2dkkaJf2dW"

.field public static final SECRET_PUB:Ljava/lang/String; = "k9hddf3lim2JfdLa"

.field public static final SET_SWS_CONTROL_SCENE_ENABLE:Z

.field public static SHARED_DISPLAY_BUTTON_ENABLE:Z = false

.field public static final SOUND_FIELD_MAX:I = 0x64

.field public static final SPEECH_STREAM:I = 0xa

.field public static final XP_LABORATORY_SWITCH:Ljava/lang/String; = "xp_laboratory_switch"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/Config;->getBrightnessMax()I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    .line 34
    const-string v0, "persist.set.sws.control.scene.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Config;->SET_SWS_CONTROL_SCENE_ENABLE:Z

    .line 35
    const-string/jumbo v0, "xp.key.game.mode.angle"

    const/16 v2, 0xb4

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/Config;->GAME_ANGLE_M:I

    .line 37
    const-string v0, "persist.check.app.online.status"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Config;->CHECK_APP_ONLINE_STATUS:Z

    .line 38
    sput-boolean v2, Lcom/xiaopeng/xuiservice/xapp/Config;->CloseDialogBeforeStartApplication:Z

    .line 39
    sput-boolean v2, Lcom/xiaopeng/xuiservice/xapp/Config;->CheckPermissionBeforeStartApplication:Z

    .line 40
    const-string v0, "persist.shared.display.button.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Config;->SHARED_DISPLAY_BUTTON_ENABLE:Z

    .line 46
    sput v1, Lcom/xiaopeng/xuiservice/xapp/Config;->ECHO_VOLUME_MIN:I

    .line 47
    const/16 v0, 0x64

    sput v0, Lcom/xiaopeng/xuiservice/xapp/Config;->ECHO_VOLUME_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightnessMax()I
    .locals 2

    .line 43
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method
