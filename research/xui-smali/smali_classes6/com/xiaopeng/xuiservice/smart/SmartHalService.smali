.class public Lcom/xiaopeng/xuiservice/smart/SmartHalService;
.super Lcom/xiaopeng/xuiservice/HalServiceBase;
.source "SmartHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;
.implements Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;
.implements Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;,
        Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;,
        Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalServiceHolder;
    }
.end annotation


# static fields
.field public static final ALARM_VOLUME_HIGH:I = 0x2

.field public static final ALARM_VOLUME_LOW:I = 0x0

.field public static final ALARM_VOLUME_MIDDLE:I = 0x1

.field public static final AVAS_SOUND_EFFECT_A:I = 0x1

.field public static final AVAS_SOUND_EFFECT_B:I = 0x2

.field public static final AVAS_SOUND_EFFECT_C:I = 0x3

.field public static final BOOT_SOUND_EFFECT_A:I = 0x1

.field public static final BOOT_SOUND_EFFECT_B:I = 0x2

.field public static final BOOT_SOUND_EFFECT_C:I = 0x3

.field public static final BOOT_SOUND_EFFECT_DISABLE:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartHalService"

.field public static final XBOSS_MUTE_UNMUTE:I = 0x2

.field public static final XBOSS_NONE:I = 0x0

.field public static final XBOSS_SHOW_OFF:I = 0x4

.field public static final XBOSS_SWITCH_MEDIA:I = 0x3

.field public static final XBOSS_TAKE_PHOTO:I = 0x5

.field public static final XBOSS_TEAM_COMMUNICATION:I = 0x6

.field public static final XBOSS_VOICE_ACTIVE:I = 0x1

.field public static final XKEY_AUTO_PARK:I = 0x4

.field public static final XKEY_AUTO_PILOT:I = 0x5

.field public static final XKEY_NONE:I = 0x0

.field public static final XKEY_SHOW_OFF:I = 0x2

.field public static final XKEY_SWITCH_MEDIA:I = 0x1

.field public static final XKEY_TAKE_PHOTO:I = 0x3

.field public static final XKEY_TEAM_COMMUNICATION:I = 0x7

.field public static final XKEY_VOICE_CHAT:I = 0x6

.field private static final hasMicRecord:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static final mContext:Landroid/content/Context;


# instance fields
.field private mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

.field private mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/smart/BaseSmartService;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartAmbientLightService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

.field private mSmartAmbientService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

.field private mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field private mSmartService:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/smart/BaseSmartService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mContext:Landroid/content/Context;

    .line 74
    const-string v0, "persist.sys.xpeng.mic_record"

    .line 75
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->hasMicRecord:Z

    .line 76
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/HalServiceBase;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mServiceMap:Ljava/util/HashMap;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartAmbientLightService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartAmbientService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    .line 99
    const-string v0, "SmartHalService"

    const-string v1, "started SmartHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->getAlarmFromAzimuthOrIcm()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setStereoAlarm(Z)V

    .line 105
    const-string v0, "ATLS"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartAmbientService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartAmbientService:Lcom/xiaopeng/xuiservice/smart/SmartAmbientService;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->hasMicRecord:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    move-result-object v0

    .line 114
    .local v0, "service":Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    .end local v0    # "service":Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    :cond_1
    const-string v0, "LLU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "persist.sys.smartlluservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v2, :cond_2

    .line 119
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    move-result-object v0

    .line 123
    .local v0, "service":Lcom/xiaopeng/xuiservice/smart/SmartLampService;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .end local v0    # "service":Lcom/xiaopeng/xuiservice/smart/SmartLampService;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v4, 0x8

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_3
    const-string v0, "scissorsGate"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v4, 0x9

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    const-string v0, "XPU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xd

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xe

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    const-string v0, "persist.sys.smartwifiservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWifiService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartWifiService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0x15

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    nop

    .local v3, "i":I
    :goto_1
    move v0, v3

    .end local v3    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 168
    .local v1, "service":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 166
    .end local v1    # "service":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 171
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartHalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartHalService$1;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;-><init>()V

    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    .line 247
    const-string v0, "SmartHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartHalService;
    .locals 1

    .line 174
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    return-object v0
.end method

.method private isXKeyFirstTime()Z
    .locals 3

    .line 376
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyFirstTime"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private setStereoAlarm(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 88
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setStereoAlarm(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStereoAlarm failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setXKeyFirstTime(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 385
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyFirstTime"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 253
    const-string v0, "*Smart HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to dump module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const-string v0, "hal"

    .line 259
    .local v0, "localModule":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "svc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    .end local v2    # "svc":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 265
    .local v1, "service":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no module instance for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .end local v1    # "service":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    :cond_2
    :goto_1
    return-void
.end method

.method public enableCarSpeedVolume(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 440
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->enableCarSpeedVolume(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public getAlarmFromAzimuthOrIcm()Z
    .locals 3

    .line 280
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAlarmFromAzimuthOrIcmSet"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public getAlarmVolume()I
    .locals 2

    .line 463
    const-string v0, "SmartHalService"

    const-string v1, "getAlarmVolume() has been deprecated!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public getBootSoundEffect()I
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 519
    .local v0, "boot":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getBootSoundEffect()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBossKeyForCustomer()I
    .locals 3

    .line 338
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyForBoss"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFftLLUEnable()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getFftLLUEnable()Z

    move-result v0

    return v0

    .line 625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyBoardTouchPrompt()Z
    .locals 3

    .line 301
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KeyBoardTouchPrompt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public getLangLightEffectEnable()Z
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectEnable()Z

    move-result v0

    return v0

    .line 712
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLangLightEffectNameList(I)Ljava/util/List;
    .locals 1
    .param p1, "effectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectNameList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 547
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightEffect(I)I
    .locals 1
    .param p1, "effectName"    # I

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLightEffect(I)I

    move-result v0

    return v0

    .line 852
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLluDownLoadEffectNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLluDownLoadEffectNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLluDownLoadEffectNameList()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLluDownLoadEffectNameList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLluLocalDanceNameList()Ljava/lang/String;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLluLocalDanceNameList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLluSleepMode()I
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLluSleepMode()I

    move-result v0

    return v0

    .line 684
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLluWakeWaitMode()I
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLluWakeWaitMode()I

    move-result v0

    return v0

    .line 654
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRunnningLluEffectName()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getRunnningLluEffectName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 599
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSayHiEffect()I
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 490
    .local v0, "avas":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->getSayHiEffect()I

    move-result v1

    nop

    :cond_0
    return v1
.end method

.method public getSayHiEnable()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getSayHiEnable()Z

    move-result v0

    return v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSpeechStatus()Z
    .locals 1

    .line 897
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInitStatus()Z

    move-result v0

    return v0
.end method

.method public getTouchRotationDirection()I
    .locals 3

    .line 357
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TouchRotationDirection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVolumeDownInReverseMode()Z
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 418
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownInReverseMode()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getVolumeDownWithDoorOpen()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 396
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownWithDoorOpen()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getXKeyForCustomer()I
    .locals 3

    .line 319
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyForCustomer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    .line 238
    .local v0, "listener":Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;)V

    .line 242
    :cond_0
    return-void

    .line 238
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 5

    .line 210
    const-string v0, "SmartHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 215
    .local v1, "item":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    const-string v2, "SmartHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->getModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->init()V

    .line 212
    .end local v1    # "item":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public isLightDanceAvailable()I
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDanceAvailable()I

    move-result v0

    return v0

    .line 738
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLightDancing()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v0

    return v0

    .line 780
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAiLluEvent(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    const/16 v1, 0x1000

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;->onSmartCommonEvent(III)V

    .line 980
    :cond_0
    return-void
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 1
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;->onLightEffectFinishEvent(II)V

    .line 945
    :cond_0
    return-void
.end method

.method public onLightEffectShowError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 970
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;->onLightEffectShowError(Ljava/lang/String;I)V

    .line 973
    :cond_0
    return-void
.end method

.method public onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_0
    return-void
.end method

.method public onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
    return-void
.end method

.method public onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectType"    # Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    return-void
.end method

.method public onSpeechTtsEventCallBack(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "ttsId"    # Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;->onSmartSpeechTtsEvent(ILjava/lang/String;)V

    .line 987
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 224
    const-string v0, "SmartHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    .line 227
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 230
    .local v1, "item":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->release()V

    .line 228
    .end local v1    # "item":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setAlarmFromAzimuthOrIcm(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 290
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setStereoAlarm(Z)V

    .line 291
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAlarmFromAzimuthOrIcmSet"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    return-void
.end method

.method public setAlarmVolume(I)V
    .locals 2
    .param p1, "type"    # I

    .line 477
    const-string v0, "SmartHalService"

    const-string v1, "setAlarmVolume() has been deprecated!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public setBootSoundEffect(I)V
    .locals 2
    .param p1, "type"    # I

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 533
    .local v0, "boot":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    .line 534
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setBootSoundEffect(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public setBossKeyForCustomer(I)V
    .locals 2
    .param p1, "keyFunc"    # I

    .line 346
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyForBoss"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    return-void
.end method

.method public setCommonListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mCommonListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;

    .line 193
    const-string v0, "SmartHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommonListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->addSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->removeSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz p1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setAiLluListener(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;)V

    .line 204
    :cond_2
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFftLLUEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setFftLLUEnable(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method public setKeyBoardTouchPrompt(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 311
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KeyBoardTouchPrompt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    return-void
.end method

.method public setLangLightEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLangLightEffectEnable(Z)V

    .line 725
    :cond_0
    return-void
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLangLightMusicEffect(Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void
.end method

.method public setLightEffect(II)V
    .locals 1
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLightEffect(II)V

    .line 875
    :cond_0
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mListener:Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;

    .line 181
    const-string v0, "SmartHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setListener(Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;)V

    .line 186
    :cond_1
    monitor-exit p0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLluSleepMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 696
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSleepMode(I)V

    .line 699
    :cond_0
    return-void
.end method

.method public setLluWakeWaitMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluWakeWaitMode(I)V

    .line 669
    :cond_0
    return-void
.end method

.method public setSayHiEffect(I)V
    .locals 2
    .param p1, "type"    # I

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 503
    .local v0, "avas":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    .line 504
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->setSayHiEffect(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public setSayHiEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setSayHiEnable(Z)V

    .line 829
    :cond_0
    return-void
.end method

.method public setSpeedVolumeMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 451
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->setSpeedVolumeMode(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public setTouchRotationDirection(I)V
    .locals 2
    .param p1, "rotationDirection"    # I

    .line 369
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TouchRotationDirection"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    return-void
.end method

.method public setVolumeDownInReverseMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 429
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->setVolumeDownInReverseMode(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setVolumeDownWithDoorOpen(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartService:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;

    .line 407
    .local v0, "volume":Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->setVolumeDownWithDoorOpen(Z)V

    .line 408
    :cond_0
    return-void
.end method

.method public setXKeyForCustomer(I)V
    .locals 2
    .param p1, "keyFunc"    # I

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->isXKeyFirstTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setXKeyFirstTime(Z)V

    .line 330
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XKeyForCustomer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    return-void
.end method

.method public speakByImportant(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 905
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByImportant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 913
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByNormal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 901
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByNormal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speakByUrgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 909
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByUrgent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startAiLluMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startAiLluMode(I)V

    .line 885
    :cond_0
    return-void
.end method

.method public startLangLightEffectShow(Ljava/lang/String;I)I
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLangLightEffectShow(Ljava/lang/String;I)V

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startLightDancing(Ljava/lang/String;I)I
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLightDancing(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 752
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public startMicRecordMode(I)I
    .locals 1
    .param p1, "status"    # I

    .line 925
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->hasMicRecord:Z

    if-eqz v0, :cond_0

    .line 926
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->handleRecorderEvent(I)V

    .line 929
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->hasMicRecord:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public stopAiLluMode()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopAiLluMode()V

    .line 894
    :cond_0
    return-void
.end method

.method public stopAllSpeech()V
    .locals 1

    .line 921
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->stopAllSpeech()V

    .line 922
    return-void
.end method

.method public stopLightDancing()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    move-result v0

    return v0

    .line 766
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopLightEffectShow()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 803
    :cond_0
    return-void
.end method

.method public stopMicRecordMode()I
    .locals 2

    .line 933
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->hasMicRecord:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 934
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->handleRecorderEvent(I)V

    .line 937
    :cond_0
    return v1
.end method

.method public stopSpeech(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 917
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->stopSpeech(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public updateEffectFiles(I)V
    .locals 1
    .param p1, "effectType"    # I

    .line 634
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->mSmartLluService:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateEffectFiles()V

    .line 639
    :cond_1
    return-void
.end method
