.class public Lcom/xiaopeng/util/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field private static final DEFAULT_NOT_SET_VALUE:I = -0x1

.field public static final FO_A2DP_AUTODISCONNECT_ENABLED:Z

.field public static final FO_ACTIVITY_AUTO_ADAPTION_ENABLED:Z

.field public static final FO_ACTIVITY_ZOOM_ENABLED:Z

.field public static final FO_AI_LLU_ENABLED:Z

.field public static final FO_AMP_TYPE:I

.field public static final FO_ANIMA_SUPPORT:Z

.field public static final FO_APP_ICON_DENSITY:I

.field public static final FO_APP_ICON_OVERLAY_ENABLED:Z

.field public static final FO_APP_LIST_ICON_SIZE:I

.field public static final FO_ATL_TYPE:I

.field public static final FO_AUDIO_EFFECT_DYNAUDIO_DEFTPE:I

.field public static final FO_AUDIO_EFFECT_FORM:I

.field public static final FO_AUDIO_EFFECT_XSOUND_DEFTPE:I

.field public static final FO_AUDIO_HAL_CHANNEL_SWITCH:I

.field public static final FO_AUDIO_SOUND_EFFECT_SCENE:I

.field public static final FO_AUDIO_STEREO_ENABLED:Z

.field public static final FO_AUDIO_SUPPORT_HFP_VOLUME:Z

.field public static final FO_AUDIO_SUPPORT_SMART_EFFECT:Z

.field public static final FO_AUDIO_SYSTEM_VOLUME:I

.field public static final FO_AUTO_BRIGHTNESS_TYPE:I

.field public static final FO_AVAS_SAYHI_DEFAULT:Z

.field public static final FO_AVAS_SUPPORT_TYPE:I

.field public static final FO_BACKLIGHT_OVERTEMP_PROTECT:I

.field public static final FO_BOOT_POLICY_CPU:D

.field public static final FO_BOOT_POLICY_ENABLED:Z

.field public static final FO_BOOT_POLICY_TIMEOUT:I

.field public static final FO_BOOT_SOUND_SUPPORT_TYPE:I

.field public static final FO_CARLINK_HICAR_MODE:Z

.field public static final FO_CFC_CODE_PROPERTY:Ljava/lang/String;

.field public static final FO_DEVICE_INTERNATIONAL_ENABLED:Z

.field public static final FO_DISPLAY_ICM_BOUNDS:Ljava/lang/String;

.field public static final FO_DOCKER_ICON_SIZE:I

.field public static final FO_EPS_TYPE:I

.field public static final FO_FACE_ANGLE_ENABLED:Z

.field public static final FO_FLY_GAME_ENABLED:Z

.field public static final FO_FRAGRANCE_PROTOCAL:I

.field public static final FO_FREEZE_DURATION_FACTOR:D

.field public static final FO_GESTURE_SLIDE_TYPE:I

.field public static final FO_HOME_DESKTOP_SUPPORT:Z

.field public static final FO_ICM_TYPE:I

.field public static final FO_INPUT_RESYNTHESIZED_LISTENER_ENABLED:Z

.field public static final FO_INTERCEPT_MOTIONEVENT:Z

.field public static final FO_KARAOKE_BUILT_IN_MIC:I

.field public static final FO_KEEPALIVE_POLICY_ENABLED:Z

.field public static final FO_LLU_FRONT_NUM:I

.field public static final FO_LLU_REAR_NUM:I

.field public static final FO_LLU_TYPE:I

.field public static final FO_MEDIA_LAUNCHER_POLICY:I

.field public static final FO_MEDIA_RESTORE_VOLUME:I

.field public static final FO_MEDIA_RESTORE_VOLUME_AMP:I

.field public static final FO_MEDIA_RING_VOLUME:Z

.field public static final FO_MINIRPOG_ENABLED:Z

.field public static final FO_MINI_PROGRAM_PACKAGES:Ljava/lang/String;

.field public static final FO_NATIVE_E_CALL_ENABLE:Z

.field public static final FO_PACKAGE_FORCE_STOP_ENABLED:Z

.field public static final FO_PARKING_FMB_LIGHT_AUTO_TYPE:I

.field public static final FO_PASSENGER_BT_AUDIO_EXIST:I

.field public static final FO_PRODUCT_SERIES:I

.field public static final FO_PROJECT_UI_TYPE:I

.field public static final FO_REMOTE_SERVICE_ENABLE:Z

.field public static final FO_ROUND_CORNER_RADIUS:I

.field public static final FO_SCREEN_NUM:I

.field public static final FO_SCREEN_ROTATION_ENABLED:Z

.field public static final FO_SCREEN_SPLIT_MASK:Z

.field public static final FO_SCREEN_SPLIT_TYPE:I

.field public static final FO_SCREEN_WALLPAPER_PURE_COLOR:Z

.field public static final FO_SECONDARY_DISPLAY_DEPEND_PROVISIONED:Z

.field public static final FO_SECONDARY_HOME_COMPONENT:Ljava/lang/String;

.field public static final FO_SECONDARY_HOME_DISPLAY:I

.field public static final FO_SHARED_DISPLAY_ENABLED:Z

.field public static final FO_SUPPORT_INFOFLOW:Z

.field public static final FO_SUPPORT_PHONE_MENTION:Z

.field public static final FO_SYSTEMUI_QS_BLUR:I

.field public static final FO_TTS_RESTORE_VOLUME:I

.field public static final FO_VENDOR_CONFIDENTIAL:Z

.field public static final FO_XOS_WALLPAPER_TYPE:I

.field public static final FO_XSERVICE_UI_MIGRATE:Z

.field public static final FO_XUI_INSTALLER_ENABLE:Z

.field public static final FO_XUI_PROCESS_HELP_LAUNCH:Z

.field private static final PROPERTY_NOT_SUPPORT:Ljava/lang/String; = "0"

.field private static final PROPERTY_SUPPORT:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "FeatureOption"

.field private static sFeatureSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sFeatureType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->sFeatureSupport:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->sFeatureType:Ljava/util/HashMap;

    .line 26
    new-instance v0, Lcom/xiaopeng/util/FeatureFactory$DefaultFeatureInterface;

    invoke-direct {v0}, Lcom/xiaopeng/util/FeatureFactory$DefaultFeatureInterface;-><init>()V

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    const-string v0, "fo.home.desktop.support"

    const/4 v1, 0x1

    .line 121
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_HOME_DESKTOP_SUPPORT:Z

    const-string v0, "fo.activity.zoom.enabled"

    .line 125
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_ACTIVITY_ZOOM_ENABLED:Z

    const-string v0, "fo.activity.auto.adaption.enabled"

    const/4 v2, 0x0

    .line 129
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_ACTIVITY_AUTO_ADAPTION_ENABLED:Z

    const-string v0, "fo.package.force.stop.enable"

    .line 133
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_PACKAGE_FORCE_STOP_ENABLED:Z

    const-string v0, "fo.device.international.enabled"

    .line 137
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_DEVICE_INTERNATIONAL_ENABLED:Z

    const-string v0, "fo.a2dp.autodisconnect.enabled"

    .line 141
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_A2DP_AUTODISCONNECT_ENABLED:Z

    const-string v0, "fo.mini.program.enabled"

    .line 145
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_MINIRPOG_ENABLED:Z

    const-string v0, "fo.mini.program.packages"

    const-string v3, ""

    .line 149
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->FO_MINI_PROGRAM_PACKAGES:Ljava/lang/String;

    const-string v0, "fo.input.resynthesized.listener.enabled"

    .line 153
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_INPUT_RESYNTHESIZED_LISTENER_ENABLED:Z

    const-string v0, "fo.fly.game.enabled"

    .line 157
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_FLY_GAME_ENABLED:Z

    const-string v0, "fo.boot.policy.enabled"

    .line 161
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_POLICY_ENABLED:Z

    const-string v0, "fo.keep.alive.policy.enabled"

    .line 165
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_KEEPALIVE_POLICY_ENABLED:Z

    const-string v0, "fo.boot.policy.cpu"

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 169
    invoke-static {v0, v3, v4}, Lcom/xiaopeng/util/FeatureOption;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    sput-wide v3, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_POLICY_CPU:D

    const-string v0, "fo.boot.policy.timeout"

    const/4 v3, 0x2

    .line 173
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_POLICY_TIMEOUT:I

    const-string v0, "fo.product.series"

    .line 180
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_PRODUCT_SERIES:I

    const-string v0, "fo.device.icm.type"

    .line 188
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_ICM_TYPE:I

    const-string v0, "fo.face.angle.enabled"

    .line 192
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_FACE_ANGLE_ENABLED:Z

    const-string v0, "fo.screen.rotation.enabled"

    .line 196
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SCREEN_ROTATION_ENABLED:Z

    const-string v0, "fo.auto.brightness.type"

    .line 202
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUTO_BRIGHTNESS_TYPE:I

    const-string v0, "fo.app.icon.overlay.enabled"

    .line 206
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_APP_ICON_OVERLAY_ENABLED:Z

    const-string v0, "fo.app.icon.density"

    const/16 v4, 0x140

    .line 213
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_APP_ICON_DENSITY:I

    const-string v0, "fo.applist.icon.size"

    const/16 v4, 0x90

    .line 218
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_APP_LIST_ICON_SIZE:I

    const-string v0, "fo.docker.icon.size"

    const/16 v4, 0x50

    .line 223
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_DOCKER_ICON_SIZE:I

    const-string v0, "fo.animation.support"

    .line 228
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_ANIMA_SUPPORT:Z

    const-string v0, "fo.intercept.motionevent"

    .line 232
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_INTERCEPT_MOTIONEVENT:Z

    const-string v0, "fo.xui.process.help.launch"

    .line 236
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_XUI_PROCESS_HELP_LAUNCH:Z

    const-string v0, "fo.xui.remoteservice.enable"

    .line 240
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_REMOTE_SERVICE_ENABLE:Z

    const-string v0, "fo.carlinkhicar.mode"

    .line 244
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_CARLINK_HICAR_MODE:Z

    const-string v0, "fo.support.infoflow"

    .line 248
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SUPPORT_INFOFLOW:Z

    const-string v0, "fo.support.phonemention"

    .line 252
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SUPPORT_PHONE_MENTION:Z

    const-string v0, "fo.device.eps.type"

    .line 258
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_EPS_TYPE:I

    const-string v0, "fo.parking.fmb.auto.type"

    .line 264
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_PARKING_FMB_LIGHT_AUTO_TYPE:I

    const-string v0, "fo.device.llu.type"

    .line 270
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_TYPE:I

    const-string v0, "fo.device.llu.front.num"

    const/16 v4, 0x70

    .line 274
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_FRONT_NUM:I

    const-string v0, "fo.device.llu.rear.num"

    const/16 v4, 0x7c

    .line 275
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_LLU_REAR_NUM:I

    const-string v0, "fo.ai.llu.enabled"

    .line 279
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AI_LLU_ENABLED:Z

    const-string v0, "fo.device.atl.type"

    .line 285
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_ATL_TYPE:I

    const-string v0, "fo.boot.sound.support.type"

    .line 291
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_BOOT_SOUND_SUPPORT_TYPE:I

    const-string v0, "fo.backlight.overtemp.protect"

    .line 295
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_BACKLIGHT_OVERTEMP_PROTECT:I

    const-string v0, "fo.cfccode.property"

    const-string v4, "persist.sys.xiaopeng.cfcIndex"

    .line 299
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->FO_CFC_CODE_PROPERTY:Ljava/lang/String;

    const-string v0, "persist.sys.xp.shared_display.enable"

    .line 305
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;IZ)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SHARED_DISPLAY_ENABLED:Z

    const-string v0, "fo.screen.number"

    .line 309
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_SCREEN_NUM:I

    const/16 v0, 0x10

    const-string v4, "fo.window.round.corner.radius"

    .line 313
    invoke-static {v4, v0}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_ROUND_CORNER_RADIUS:I

    const-string v0, "fo.secondary.home.display"

    const/4 v4, 0x3

    .line 317
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_SECONDARY_HOME_DISPLAY:I

    const-string v0, "fo.secondary.home.component"

    const-string v5, "com.xiaopeng.systemui/com.xiaopeng.systemui.launcher.LauncherActivity"

    .line 321
    invoke-static {v0, v5}, Lcom/xiaopeng/util/FeatureOption;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->FO_SECONDARY_HOME_COMPONENT:Ljava/lang/String;

    const-string v0, "fo.avas.support.type"

    .line 327
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AVAS_SUPPORT_TYPE:I

    const-string v0, "fo.avas.sayhi.default"

    .line 332
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AVAS_SAYHI_DEFAULT:Z

    const-string v0, "fo.fragrance.protocal"

    .line 339
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_FRAGRANCE_PROTOCAL:I

    const-string v0, "fo.ui.type"

    .line 345
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_PROJECT_UI_TYPE:I

    const-string v0, "fo.amp.type"

    .line 351
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AMP_TYPE:I

    const-string v0, "fo.audio.effect.form"

    .line 353
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_EFFECT_FORM:I

    const-string v0, "fo.audio.stereo.enabled"

    .line 359
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_STEREO_ENABLED:Z

    const-string v0, "fo.audio.passager.btaudio"

    .line 365
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_PASSENGER_BT_AUDIO_EXIST:I

    const-string v0, "fo.audio.system.volume"

    const/16 v5, 0xf

    .line 369
    invoke-static {v0, v5}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_SYSTEM_VOLUME:I

    const/4 v0, 0x6

    const-string v6, "fo.media.restore.volume"

    .line 374
    invoke-static {v6, v0}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_MEDIA_RESTORE_VOLUME:I

    const/4 v0, 0x4

    const-string v6, "fo.media.restore.volume.amp"

    .line 379
    invoke-static {v6, v0}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_MEDIA_RESTORE_VOLUME_AMP:I

    const-string v0, "fo.audio.effect.xsound.type"

    .line 384
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_EFFECT_XSOUND_DEFTPE:I

    const-string v0, "fo.audio.effect.dynaudio.type"

    .line 385
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_EFFECT_DYNAUDIO_DEFTPE:I

    const-string v0, "fo.media.launcher.policy"

    .line 389
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_MEDIA_LAUNCHER_POLICY:I

    const-string v0, "fo.gesture.slide.type"

    .line 395
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_GESTURE_SLIDE_TYPE:I

    const-string v0, "fo.native.ecall.enable"

    .line 397
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_NATIVE_E_CALL_ENABLE:Z

    const-string v0, "fo.display.icm.bounds"

    const-string v4, "1920x720"

    .line 401
    invoke-static {v0, v4}, Lcom/xiaopeng/util/FeatureOption;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/util/FeatureOption;->FO_DISPLAY_ICM_BOUNDS:Ljava/lang/String;

    const-string v0, "fo.secondary.display.depend.provisioned"

    .line 408
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SECONDARY_DISPLAY_DEPEND_PROVISIONED:Z

    const-string v0, "fo.audio.sound.effect.scene"

    .line 413
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_SOUND_EFFECT_SCENE:I

    const-string v0, "fo.vendor.confidential"

    .line 418
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_VENDOR_CONFIDENTIAL:Z

    const-string v0, "fo.media.ring.volume"

    .line 423
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_MEDIA_RING_VOLUME:Z

    const-string v0, "fo.tts.restore.volume"

    .line 428
    invoke-static {v0, v5}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_TTS_RESTORE_VOLUME:I

    const-string v0, "fo.systemui.qs.blur.type"

    .line 435
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_SYSTEMUI_QS_BLUR:I

    const-string v0, "fo.audio.hal.channel.switch"

    .line 442
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_HAL_CHANNEL_SWITCH:I

    const-string v0, "fo.xui.installer.enable"

    .line 449
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_XUI_INSTALLER_ENABLE:Z

    const-string v0, "fo.audio.support.hfp.volume"

    .line 456
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_SUPPORT_HFP_VOLUME:Z

    const-string v0, "fo.xos.wallpaper.type"

    .line 464
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_XOS_WALLPAPER_TYPE:I

    const-string v0, "fo.xservice.ui.migrate"

    .line 471
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_XSERVICE_UI_MIGRATE:Z

    const-string v0, "fo.karaoke.built.in.mic"

    .line 478
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_KARAOKE_BUILT_IN_MIC:I

    const-string v0, "fo.screen.split.type"

    .line 484
    invoke-static {v0, v3}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/util/FeatureOption;->FO_SCREEN_SPLIT_TYPE:I

    const-string v0, "fo.screen.split.mask"

    .line 488
    invoke-static {v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SCREEN_SPLIT_MASK:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v3, "fo.freeze.duration.factor"

    .line 495
    invoke-static {v3, v0, v1}, Lcom/xiaopeng/util/FeatureOption;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/util/FeatureOption;->FO_FREEZE_DURATION_FACTOR:D

    const-string v0, "fo.audio.support.smart.effect"

    .line 502
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_AUDIO_SUPPORT_SMART_EFFECT:Z

    const-string v0, "fo.screen.wallpaper.pure.color"

    .line 506
    invoke-static {v0, v2}, Lcom/xiaopeng/util/FeatureOption;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SCREEN_WALLPAPER_PURE_COLOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFeatureType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sFeatureType:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.xiaopeng."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/xiaopeng/util/FeatureOption;->sFeatureType:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " feature type is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FeatureOption"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/util/FeatureOption;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sInterface:Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/util/FeatureFactory$IFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 3

    .line 49
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.xiaopeng."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/xiaopeng/util/FeatureOption;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The car "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "support feature: "

    goto :goto_0

    :cond_0
    const-string v2, " not support feature: "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FeatureOption"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static hasXPFeature(Ljava/lang/String;)Z
    .locals 7

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".enabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "DVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "FeatureOption"

    if-nez v0, :cond_2

    const-string v0, "MAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasXPFeature wrong value"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "supportMap"

    .line 77
    invoke-static {v0}, Lcom/xiaopeng/feature/XpFeatureLite;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "none"

    .line 78
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "persist.sys.xiaopeng.AVM"

    .line 81
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "config_car_support_dvr_app"

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/feature/XpFeatureLite;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v5

    .line 89
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasXPFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    return v4
.end method

.method public static xpFeatureGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xpFeatureGetBoolean(Ljava/lang/String;)Z
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static xpFeatureGetDouble(Ljava/lang/String;)D
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static xpFeatureGetFloat(Ljava/lang/String;)F
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static xpFeatureGetInt(Ljava/lang/String;)I
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static xpFeatureGettLong(Ljava/lang/String;)J
    .locals 2

    .line 103
    invoke-static {p0}, Lcom/xiaopeng/feature/XpFeatureLite;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
