.class public Lcom/xiaopeng/xuimanager/smart/SmartManager;
.super Ljava/lang/Object;
.source "SmartManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;,
        Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;,
        Lcom/xiaopeng/xuimanager/smart/SmartManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;,
        Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;,
        Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartManagerHolder;
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

.field public static final COMMON_TYPE_AI_LLU:I = 0x1000

.field public static final DBG:Z = true

.field public static final EFFECT_AC_CHARGE:Ljava/lang/String; = "android_ac"

.field public static final EFFECT_AWAKE:Ljava/lang/String; = "android_unlock_01"

.field public static final EFFECT_DC_CHARGE:Ljava/lang/String; = "android_dc"

.field public static final EFFECT_FIND_CAR:Ljava/lang/String; = "android_findcar"

.field public static final EFFECT_FULL_CHARGED:Ljava/lang/String; = "fullcharged"

.field public static final EFFECT_LOCK:Ljava/lang/String; = "android_lock"

.field public static final EFFECT_LOCK_01:Ljava/lang/String; = "android_lock_01"

.field public static final EFFECT_LOCK_02:Ljava/lang/String; = "android_lock_02"

.field public static final EFFECT_LOCK_03:Ljava/lang/String; = "android_lock_03"

.field public static final EFFECT_SAYHI:Ljava/lang/String; = "android_sayhi"

.field public static final EFFECT_SAYHI_01:Ljava/lang/String; = "android_sayhi_01"

.field public static final EFFECT_SAYHI_02:Ljava/lang/String; = "android_sayhi_02"

.field public static final EFFECT_SAYHI_03:Ljava/lang/String; = "android_sayhi_03"

.field public static final EFFECT_SHOW_OFF:Ljava/lang/String; = "android_sayhi_01"

.field public static final EFFECT_SLEEP:Ljava/lang/String; = "android_lock_01"

.field public static final EFFECT_TAKE_PHOTO:Ljava/lang/String; = "takephoto"

.field public static final EFFECT_UNLOCK:Ljava/lang/String; = "android_unlock"

.field public static final EFFECT_UNLOCK_01:Ljava/lang/String; = "android_unlock_01"

.field public static final EFFECT_UNLOCK_02:Ljava/lang/String; = "android_unlock_02"

.field public static final EFFECT_UNLOCK_03:Ljava/lang/String; = "android_unlock_03"

.field public static final ErrorCode_Common:I = -0x4

.field public static final ErrorCode_DanceError:I = -0x1000

.field public static final ErrorCode_Forbidden:I = -0x1

.field public static final ErrorCode_NoFocus:I = -0x2

.field public static final LIGHT_EFFECT_ACCHARGE:I = 0x6

.field public static final LIGHT_EFFECT_AWAKE:I = 0x2

.field public static final LIGHT_EFFECT_DCCHARGE:I = 0x7

.field public static final LIGHT_EFFECT_FINDCAR:I = 0x1

.field public static final LIGHT_EFFECT_SHOWOFF:I = 0xa

.field public static final LIGHT_EFFECT_SLEEP:I = 0x5

.field public static final LIGHT_EFFECT_TAKEPHOTO:I = 0x9

.field public static final LLU_EFFECT_CLOSE:I = 0x0

.field public static final LLU_EFFECT_MODE_A:I = 0x1

.field public static final LLU_EFFECT_MODE_B:I = 0x2

.field public static final LLU_EFFECT_MODE_C:I = 0x3

.field public static final LLU_MODE1:I = 0x1

.field public static final LLU_MODE2:I = 0x2

.field public static final LLU_MODE3:I = 0x3

.field private static final MSG_SMART_AI_LLU_EVENT:I = 0x6

.field private static final MSG_SMART_ERROR_EVENT:I = 0x0

.field private static final MSG_SMART_LIGHT_EFFECT_FINISH_EVENT:I = 0x1

.field private static final MSG_SMART_LIGHT_EFFECT_SHOW_ERROR:I = 0x5

.field private static final MSG_SMART_LIGHT_EFFECT_SHOW_FINISH_EVENT:I = 0x4

.field private static final MSG_SMART_LIGHT_EFFECT_SHOW_START_EVENT:I = 0x2

.field private static final MSG_SMART_LIGHT_EFFECT_SHOW_STOP_EVENT:I = 0x3

.field private static final MSG_SMART_SPEECH_TTS_EVENT:I = 0x7

.field public static final SATELLITE_KEY_NONE:I = 0x0

.field public static final SATELLITE_KEY_SPORT_MODE:I = 0x2

.field public static final SATELLITE_KEY_SWITCH_ENERGY_MODE:I = 0x1

.field public static final SPEED_VOLUME_SOFT:I = 0x3

.field public static final SPEED_VOLUME_STANDARD:I = 0x1

.field public static final SPEED_VOLUME_SURGE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SmartManager"

.field public static final TOUCHPAD_DRIVER_SEAT_HEATING:I = 0x5

.field public static final TOUCHPAD_DRIVER_SEAT_MASSAGE:I = 0x9

.field public static final TOUCHPAD_DRIVER_SEAT_VENTILATION:I = 0x6

.field public static final TOUCHPAD_NONE:I = 0x0

.field public static final TOUCHPAD_PASSENGER_SEAT_HEATING:I = 0x7

.field public static final TOUCHPAD_PASSENGER_SEAT_MASSAGE:I = 0xa

.field public static final TOUCHPAD_PASSENGER_SEAT_VENTILATION:I = 0x8

.field public static final TOUCHPAD_SWITCH_READING_LIGHT:I = 0x2

.field public static final TOUCHPAD_UNLOCK_GLOVE_BOX:I = 0x1

.field public static final TOUCHPAD_UNLOCK_PRE_TRUNK:I = 0x3

.field public static final TOUCHPAD_UNLOCK_TRUNK:I = 0x4

.field public static final TOUCH_ROTATION_DIRECTION_INWARD:I = 0x0

.field public static final TOUCH_ROTATION_DIRECTION_OUTWARD:I = 0x1

.field public static final Type_Dance:Ljava/lang/String; = "dance"

.field public static final Type_LightDance:Ljava/lang/String; = "lightanddance"

.field public static final XBOSS_MUTE_UNMUTE:I = 0x2

.field public static final XBOSS_NONE:I = 0x0

.field public static final XBOSS_REAR_SCREEN:I = 0x7

.field public static final XBOSS_SHOW_OFF:I = 0x4

.field public static final XBOSS_SWITCH_MEDIA:I = 0x3

.field public static final XBOSS_TAKE_PHOTO:I = 0x5

.field public static final XBOSS_TEAM_COMMUNICATION:I = 0x6

.field public static final XBOSS_VOICE_ACTIVE:I = 0x1

.field public static final XKEY_AIRHUD_GAME:I = 0x13

.field public static final XKEY_AUTO_PARK:I = 0x4

.field public static final XKEY_AUTO_PILOT:I = 0x5

.field public static final XKEY_FAST_CHARGE_PORT:I = 0xd

.field public static final XKEY_LCC:I = 0xc

.field public static final XKEY_LEFT_SLIDING_DOOR:I = 0xf

.field public static final XKEY_LEFT_WING_DOOR:I = 0x11

.field public static final XKEY_NAR_ASSIST:I = 0xa

.field public static final XKEY_NONE:I = 0x0

.field public static final XKEY_ONE_KEY_RECORD:I = 0xb

.field public static final XKEY_RIGHT_SLIDING_DOOR:I = 0x10

.field public static final XKEY_RIGHT_WING_DOOR:I = 0x12

.field public static final XKEY_SHOW_OFF:I = 0x2

.field public static final XKEY_SLOW_CHARGE_PORT:I = 0xe

.field public static final XKEY_SPORTS_MODE:I = 0x16

.field public static final XKEY_STEERING_WHEEL_HEAT:I = 0x15

.field public static final XKEY_SWITCH_MEDIA:I = 0x1

.field public static final XKEY_TAKE_PHOTO:I = 0x3

.field public static final XKEY_TEAM_COMMUNICATION:I = 0x7

.field public static final XKEY_UNLOCK_TRUNK:I = 0x8

.field public static final XKEY_VOICE_ACTIVE:I = 0x14

.field public static final XKEY_VOICE_CHAT:I = 0x6

.field public static final XKEY_XSPORT:I = 0x9

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private final DEFAULT_LDANCE_NAME:Ljava/lang/String;

.field private mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

.field private final mCommonListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/smart/ISmart;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PianoConcerto"

    .line 214
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->DEFAULT_LDANCE_NAME:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    .line 221
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    .line 222
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "PianoConcerto"

    .line 214
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->DEFAULT_LDANCE_NAME:Ljava/lang/String;

    .line 217
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    const/4 p2, 0x0

    .line 219
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    .line 221
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    .line 222
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    .line 251
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    .line 252
    new-instance p1, Lcom/xiaopeng/xuimanager/smart/SmartManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/smart/SmartManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/smart/SmartManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleLightEffectFinishEvent(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleLightEffectShowError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuimanager/smart/SmartManager;III)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleCommonEvent(III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuimanager/smart/SmartManager;ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->handleSpeechTtsEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchLightEffectFinishEventToClient(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchLightEffectShowStartEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchLightEffectShowStopEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchLightEffectShowFinishEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchLightEffectErrorToClient(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/smart/SmartManager;III)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchCommonEventToClient(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/smart/SmartManager;ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->dispatchSpeechTtsEventToClient(ILjava/lang/String;)V

    return-void
.end method

.method private dispatchCommonEventToClient(III)V
    .locals 2

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    .line 435
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;

    .line 438
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;->onCommonEvent(III)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 441
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 435
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 353
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 356
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 350
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectErrorToClient(Ljava/lang/String;I)V
    .locals 2

    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 420
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 423
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onLightEffectShowError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching onLightEffectShowError event."

    .line 426
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 420
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectFinishEventToClient(II)V
    .locals 2

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 367
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onLightEffectFinishEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 364
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectShowFinishEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 409
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching onLightEffectShowFinishEvent event."

    .line 412
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectShowStartEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 381
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching onLightEffectShowStartEvent event."

    .line 384
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 378
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLightEffectShowStopEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 395
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching onLightEffectShowStopEvent event."

    .line 398
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 392
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchSpeechTtsEventToClient(ILjava/lang/String;)V
    .locals 2

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;

    .line 452
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;->onSpeechTtsEvent(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SmartManager"

    const-string p2, "Listener is null, not dispatching event."

    .line 455
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 449
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/smart/SmartManager;
    .locals 1

    .line 234
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartManagerHolder;->access$100()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v0

    return-object v0
.end method

.method private handleCommonEvent(III)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 515
    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 517
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 518
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 519
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 507
    iput v1, v0, Landroid/os/Message;->what:I

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 510
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectFinishEvent(II)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 461
    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 464
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectShowError(Ljava/lang/String;I)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 499
    iput v1, v0, Landroid/os/Message;->what:I

    .line 500
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 502
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 489
    iput v1, v0, Landroid/os/Message;->what:I

    .line 490
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 492
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 494
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 469
    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 472
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 474
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 479
    iput v1, v0, Landroid/os/Message;->what:I

    .line 480
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 482
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 484
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleSpeechTtsEvent(ILjava/lang/String;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 524
    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ttsId"

    .line 527
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 529
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public enableCarSpeedVolume(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCarSpeedVolume() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->enableCarSpeedVolume(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enableCarSpeedVolume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAlarmFromAzimuthOrIcm()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getAlarmFromAzimuthOrIcm"

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getAlarmFromAzimuthOrIcm()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getAlarmFromAzimuthOrIcm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAlarmVolume()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getAlarmVolume()"

    .line 1484
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getAlarmVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getAlarmVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getBootSoundEffect()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getBootSoundEffect"

    .line 1778
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getBootSoundEffect()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getBootSoundEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getBossKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getBossKeyForCustomer"

    .line 965
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getBossKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getBossKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getFftLLUEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getFftLLUEnable"

    .line 1275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getFftLLUEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getFftLLUEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getKeyBoardTouchPrompt()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getKeyBoardTouchPrompt"

    .line 734
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getKeyBoardTouchPrompt()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getVolumeDownWithDoorOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLangLightEffectEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getLangLightEffectEnable"

    .line 1345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLangLightEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getLangLightEffectEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLangLightEffectNameList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLangLightEffectNameList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLangLightEffectNameList(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLangLightEffectNameList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLeftLongTouchPadKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getLeftLongTouchPadKeyForCustomer"

    .line 804
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLeftLongTouchPadKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getLeftLongTouchPadKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLeftTouchPadKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getLeftTouchPadKeyForCustomer"

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLeftTouchPadKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getLeftTouchPadKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLightEffect(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLightEffect(effectName): effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLightEffect(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLightEffect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLluSleepMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getLluSleepMode"

    .line 1219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLluSleepMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getLluSleepMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getLluWakeWaitMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getLluWakeWaitMode"

    .line 1179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLluWakeWaitMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getLluWakeWaitMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRightLongTouchPadKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getRightLongTouchPadKeyForCustomer"

    .line 871
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightLongTouchPadKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getRightLongTouchPadKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRightSatelliteKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getRightSatelliteKeyForCustomer"

    .line 1011
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightSatelliteKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getRightSatelliteKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRightTouchPadKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getRightTouchPadKeyForCustomer"

    .line 837
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightTouchPadKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getRightTouchPadKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRunnningLluEffectName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRunnningLluEffectName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SmartManager"

    const-string v2, "Could not getRunnningLluEffectName "

    .line 1163
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSayHiEffect()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getSayHiEffect"

    .line 1735
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSayHiEffect()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getSayHiEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSayHiEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getSayHiEnable"

    .line 1695
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSayHiEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getSayHiEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 605
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mServiceName:Ljava/lang/String;

    .line 608
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechStatus()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getSpeechStatus()"

    .line 1887
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSpeechStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getSpeechStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getTouchRotationDirection()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getTouchRotationDirection"

    .line 1052
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getTouchRotationDirection()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getTouchRotationDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getVolumeDownInReverseMode()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getVolumeDownInReverseMode"

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getVolumeDownInReverseMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getVolumeDownInReverseMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getVolumeDownWithDoorOpen()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getVolumeDownWithDoorOpen"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getVolumeDownWithDoorOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getVolumeDownWithDoorOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getXKeyForCustomer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "getXKeyForCustomer"

    .line 914
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getXKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getXKeyForCustomer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 239
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    .line 240
    new-instance p1, Lcom/xiaopeng/xuimanager/smart/SmartManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isLightDanceAvailable()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/smart/ISmart;->isLightDanceAvailable()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get LightDanceAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public isLightDancing()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "isLightDancing() "

    .line 1463
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->isLightDancing()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not isLightDancing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onXUIConnected,service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 565
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/smart/ISmart;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    const-string v0, "Could not connect: "

    if-nez p1, :cond_2

    .line 575
    :try_start_0
    new-instance p1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    .line 576
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_1
    const-string p1, "registerCommonListener"

    .line 583
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    new-instance p1, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    .line 585
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "onXUIDisconnected: "

    const-string v3, "SmartManager"

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    iget-object v4, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    invoke-interface {v0, v4}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V

    .line 541
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 549
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    iget-object v4, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    invoke-interface {v0, v4}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V

    .line 550
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized registerCommonListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SmartManager"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCommonListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    .line 314
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "SmartManager"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 322
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SmartManager"

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 266
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    .line 267
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "SmartManager"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAlarmFromAzimuthOrIcm(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlarmFromAzimuthOrIcm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setAlarmFromAzimuthOrIcm(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAlarmFromAzimuthOrIcm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setAlarmVolume(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlarmVolume(int type):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setAlarmVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAlarmVolume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setBootSoundEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBootSoundEffect(int type):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setBootSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setBootSoundEffect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setBossKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBossKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setBossKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setBossKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setFftLLUEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFftLLUEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setFftLLUEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setFftLLUEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setKeyBoardTouchPrompt(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyBoardTouchPrompt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setKeyBoardTouchPrompt(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setKeyBoardTouchPrompt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLangLightEffectEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLangLightEffectEnable() enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLangLightEffectEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLangLightEffectMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLangLightEffectMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1109
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setLangLightEffectMode(Ljava/lang/String;I)V

    return-void
.end method

.method public setLangLightEffectMode(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLangLightEffectMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setLangLightEffectMode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setLangLightEffectWithMode(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLangLightEffectWithMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectWithMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not setLangLightEffectWithMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLangLightMusicEffect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightMusicEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLangLightMusicEffect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLeftLongTouchPadKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLeftLongTouchPadKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLeftLongTouchPadKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLeftLongTouchPadKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLeftTouchPadKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLeftTouchPadKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLeftTouchPadKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLeftTouchPadKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLightEffect(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightEffect(effectName,effectMode): effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLightEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1661
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setLightEffect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setLightEffectAndMusic(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightEffectAndMusic(int messageID, int effectName, int music): messageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectMusic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLightEffectAndMusic(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not setLightEffectAndMusic: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setLluSleepMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLluSleepMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLluSleepMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLluSleepMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setLluWakeWaitMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLluWakeWaitMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLluWakeWaitMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setLluWakeWaitMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicDelayTimeForDebug(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicDelayTimeForDebug(int delayTime):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicDelayTimeForDebug(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicDelayTimeForDebug: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicSpectrumToLangLight(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicSpectrumToLangLight() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicSpectrumToLangLight(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicSpectrumToLangLight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicStartTickNumForDebug(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicStartTickNumForDebug(int tickNum):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicStartTickNumForDebug(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicStartTickNumForDebug: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicStopTickNumForDebug(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicStopTickNumForDebug(int tickNum):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicStopTickNumForDebug(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicStopTickNumForDebug: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMusicTableForDebug(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicTableForDebug(int musicTable):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicTableForDebug(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setMusicTableForDebug: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setPause(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPause() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setPause(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setPause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRightLongTouchPadKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRightLongTouchPadKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightLongTouchPadKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setRightLongTouchPadKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRightSatelliteKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRightSatelliteKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightSatelliteKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setRightSatelliteKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRightTouchPadKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRightTouchPadKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightTouchPadKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setRightTouchPadKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setSayHiEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSayHiEffect(int type):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSayHiEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setSayHiEffect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setSayHiEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSayHiEnable(boolean enable):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSayHiEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setSayHiEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 597
    sput-object p1, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setSpeedVolumeMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeedVolumeMode() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSpeedVolumeMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setSpeedVolumeMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setTouchRotationDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "setTouchRotationDirection"

    .line 1072
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setTouchRotationDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setTouchRotationDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setVolumeDownInReverseMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolumeDownInReverseMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setVolumeDownInReverseMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setVolumeDownInReverseMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setVolumeDownWithDoorOpen(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolumeDownWithDoorOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setVolumeDownWithDoorOpen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setVolumeDownWithDoorOpen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setXKeyForCustomer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXKeyForCustomer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setXKeyForCustomer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setXKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public speakByImportant(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "speakByImportant()"

    .line 1923
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByImportant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not speakByImportant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "speakByInstant()"

    .line 1959
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1964
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not speakByInstant: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public speakByNormal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "speakByNormal()"

    .line 1905
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByNormal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not speakByNormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public speakByUrgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "speakByUrgent()"

    .line 1941
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByUrgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not speakByUrgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startAiLluMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAiLluMode() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startAiLluMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not startAiLluMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startLightDancing()I
    .locals 1

    const/4 v0, 0x1

    .line 1413
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->startLightDancing(I)I

    move-result v0

    return v0
.end method

.method public startLightDancing(I)I
    .locals 2

    :try_start_0
    const-string v0, "PianoConcerto"

    .line 1418
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->startLightDancing(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not startLightDancing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public startLightDancing(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLightDancing() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startLightDancing(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not startLightDancing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public startMicRecordMode(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMicRecordMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startMicRecordMode(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not startMicRecordMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopAiLluMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopAiLluMode()"

    .line 1871
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopAiLluMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopAiLluMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopAllSpeech()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopAllSpeech()"

    .line 1992
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopAllSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopAllSpeech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopLightDancing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopLightDancing() "

    .line 1445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopLightDancing()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopLightDancing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopLightEffectShow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopLightEffectShow()"

    .line 1310
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopLightEffectShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopLightEffectShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopMicRecordMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopMicRecordMode()"

    .line 2027
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopMicRecordMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 2032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not stopMicRecordMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public stopSpeech(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "SmartManager"

    const-string v1, "stopSpeech()"

    .line 1976
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopSpeech(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopSpeech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public declared-synchronized unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SmartManager"

    const-string v1, "unregisterListener"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 342
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mCommonListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SmartManager"

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SmartManager"

    const-string v1, "unregisterListener"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 297
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mListenerToService:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SmartManager"

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateEffectFiles(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEffectFiles()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager;->mService:Lcom/xiaopeng/xuimanager/smart/ISmart;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->updateEffectFiles(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not updateEffectFiles: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
