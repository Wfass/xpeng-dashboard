.class public Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.super Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;
.source "KaraokeManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;,
        Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;,
        Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ASR_CONFIRMED:Ljava/lang/String; = "com.xiaopeng.intent.action.ASR_CONFIRMED"

.field public static final AUDIO_PAUSE_STOP:I = 0x0

.field private static final AVAS_STREAM_ENABLE:Ljava/lang/String; = "avas_speaker"

.field private static final BUTTON_ID:Ljava/lang/String; = "B002"

.field public static final DBG:Z = true

.field public static final DOLBY_ATOMS_OFF:I = 0x0

.field public static final DOLBY_ATOMS_ON:I = 0x1

.field private static final EXTRA_ASR_CONTENT:Ljava/lang/String; = "com.xiaopeng.intent.extra.ASR_CONTENT"

.field private static final KARAOKE_EVENT:I = 0x1

.field public static final KARAOKE_MIC_RESTRICTION:I

.field public static final KARAOKE_SPEECH_RESTRICTION:Z

.field public static final MIC_ON_BY_DONGLE:I = 0x2

.field public static final MIC_ON_BY_KARAOKE_APP:I = 0x1

.field public static final MIC_ON_BY_START_KARAOKE:I = 0x0

.field public static final MIC_POWER_OFF:I = 0x6

.field public static final MIC_POWER_ON:I = 0x5

.field public static final MIC_SOUND_EFFECT:I = 0x4

.field public static final MIC_VOICE_ON:I = 0x7

.field public static final MIC_VOLUME:I = 0x1

.field public static final MUSIC_VOLUME:I = 0x0

.field public static final NEW_AUDIO_START:I = 0x1

.field private static final PROP_ATL_ENABLE:Ljava/lang/String; = "persist.karaoke.atl.enable"

.field private static final PROP_DEBUG_MODE:Ljava/lang/String; = "persist.sys.xiaopeng.debugon"

.field private static final PROP_IS_ATL_EXIST:Ljava/lang/String; = "persist.sys.xiaopeng.ATLS"

.field public static final TAG:Ljava/lang/String; = "KaraokeManagerService"

.field public static final UDB_DONGLE_OFF:I = 0x4

.field public static final UDB_DONGLE_ON:I = 0x3

.field private static final XP_KARAOKE_SERVICE:Z

.field private static final hasAvas:Z

.field private static volatile karaokeManagerService:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

.field private static key_on:Z

.field private static mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

.field private static mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private static mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

.field private static mickey_use_type:I

.field private static mkHandler:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

.field private static final productId:Ljava/lang/String;

.field private static final supportMicKey:Z


# instance fields
.field private final EFFECT_FILE_NAME:Ljava/lang/String;

.field private final LOOSTONE_KARAOKE:Ljava/lang/String;

.field private TYPE_LOCAL_IG_ON:I

.field private VALUE_LOCAL_IG_ON:Ljava/lang/String;

.field private VISUALIZER_REC_INIT:I

.field private VISUALIZER_REC_OFF:I

.field private VISUALIZER_REC_ON:I

.field private final XP_KARAOKE:Ljava/lang/String;

.field private audioStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentVendor:Ljava/lang/String;

.field private deviceSerialNumber:Ljava/lang/String;

.field private dongleStatus:Z

.field private fRec:Ljava/io/FileOutputStream;

.field private hasAMP:Z

.field iKaraokeListener:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

.field karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAmbientLightEventListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private final mContext:Landroid/content/Context;

.field private final mForceControlLock:Ljava/lang/Object;

.field private mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

.field private final mMicSDKReadLock:Ljava/lang/Object;

.field private final mMicSDKServiceLock:Ljava/lang/Object;

.field private final mMicSDKWriteLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private methodQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;",
            ">;"
        }
    .end annotation
.end field

.field private micSoundEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final recFilePath:Ljava/lang/String;

.field private resourcesOccupied:Z

.field private resumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resumeTime:J

.field private visualizer_rec_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 129
    const-string v0, "persist.audio.record.mickey.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->supportMicKey:Z

    .line 131
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_AVAS_SUPPORT_TYPE:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAvas:Z

    .line 133
    const-string v0, "ro.product.product.model"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->productId:Ljava/lang/String;

    .line 159
    sput-boolean v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->key_on:Z

    .line 160
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mickey_use_type:I

    .line 166
    const-string v0, "persist.karaoke.speech.restriction"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_SPEECH_RESTRICTION:Z

    .line 167
    const-string v0, "persist.karaoke.mic.restriction"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    .line 174
    const-string v0, "persist.karaoke.xpkaraokeservice.switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XP_KARAOKE_SERVICE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 176
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mForceControlLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKWriteLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKReadLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;

    const-string v1, "KaraokeManagerService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$1;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 134
    const-string v0, "karaoke/MicEffectData.json"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->EFFECT_FILE_NAME:Ljava/lang/String;

    .line 138
    const-string v0, "Loostone"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->LOOSTONE_KARAOKE:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "xp"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XP_KARAOKE:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    .line 149
    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_INIT:I

    .line 150
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_OFF:I

    .line 151
    const/4 v2, 0x2

    iput v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_ON:I

    .line 152
    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_INIT:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    .line 153
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeTime:J

    .line 154
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->deviceSerialNumber:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->TYPE_LOCAL_IG_ON:I

    .line 156
    const-string v2, "local_ig_on"

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VALUE_LOCAL_IG_ON:Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    .line 158
    const-string v2, "persist.sys.xiaopeng.AMP"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAMP:Z

    .line 161
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->methodQueue:Ljava/util/Queue;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    .line 163
    const-string v2, "Unknow"

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->audioStack:Ljava/util/Stack;

    .line 165
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    .line 275
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$6;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$6;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 323
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$8;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->iKaraokeListener:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 1303
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 1468
    const-string v2, "/data/local/tmp/rec.pcm"

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->recFilePath:Ljava/lang/String;

    .line 177
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    .line 178
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    sput-object v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mkHandler:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    .line 180
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 181
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->getInstance()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    .line 182
    sget-boolean v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XP_KARAOKE_SERVICE:Z

    if-eqz v2, :cond_1

    .line 183
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->getInstance()Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    .line 185
    :cond_1
    new-instance v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$2;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbientLightEventListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    .line 205
    sget-object v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$3;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 223
    sget-object v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setKaraokeOn(Z)V

    .line 230
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    sget-boolean v3, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAvas:Z

    if-eqz v3, :cond_6

    .line 238
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "avas_speaker"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    .line 239
    .local v3, "avasStreamEnable":Z
    :goto_1
    if-nez v3, :cond_5

    move v0, v1

    nop

    :cond_5
    sget-object v4, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->productId:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_SetOutPutPath(ZLjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "avas_speaker"

    .line 241
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$4;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Landroid/os/Handler;)V

    .line 240
    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    .end local v3    # "avasStreamEnable":Z
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->parseMicEffectFromJson()V

    .line 252
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$5;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->registerConfigUpdateListener(Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;)V

    .line 260
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 261
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->clearMethodData()V

    .line 262
    return-void
.end method

.method private XMS_isKaraokeApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1337
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 1338
    .local v1, "karaokePackageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v1, :cond_1

    .line 1339
    iget v2, v1, Lcom/xiaopeng/app/xpPackageInfo;->appType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1343
    .end local v1    # "karaokePackageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_1
    goto :goto_0

    .line 1341
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1344
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private XMS_setBypassFilter(IZZZ)I
    .locals 3
    .param p1, "audioSatus"    # I
    .param p2, "isKaraokeApp"    # Z
    .param p3, "isResumed"    # Z
    .param p4, "isAudioStackEmpty"    # Z

    .line 1299
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_setBypassFilter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setBypassFilter(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->isKaraokeVendor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 83
    sput-object p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mkHandler:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->reExecuteMethod()V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->supportMicKey:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->key_on:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    return p1
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_OFF:I

    return v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->releaseKaraokeResource(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->aiWakeUp()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_INIT:I

    return v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->audioStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_isKaraokeApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;IZZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_setBypassFilter(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbientLightEventListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->productId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->parseMicEffectFromJson()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->handleIgStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->checkUsbName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aiWakeUp()I
    .locals 2

    .line 1025
    const-string v0, "KaraokeManagerService"

    const-string v1, "aiWakeUp"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    const-string v1, "changba"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->wakeupSpeech(Ljava/lang/String;)V

    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method private checkDebugMode()V
    .locals 4

    .line 1489
    const-string v0, "persist.sys.xiaopeng.debugon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1490
    .local v0, "isDbgMode":Z
    if-eqz v0, :cond_0

    .line 1491
    const-string v1, "KaraokeManagerService"

    const-string v2, "Can not use Mic because of DebugMode"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0e006d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1494
    :cond_0
    return-void
.end method

.method private checkUsbName()Ljava/lang/String;
    .locals 8

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1004
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 1005
    .local v1, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1006
    .local v2, "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/usb/UsbDevice;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 1008
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, "name":Ljava/lang/String;
    const-string v5, "KaraokeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    if-eqz v4, :cond_0

    const-string v5, "Loostone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1011
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->deviceSerialNumber:Ljava/lang/String;

    .line 1012
    const-string v5, "Loostone"

    iput-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;

    .line 1013
    const-string v5, "Loostone"

    return-object v5

    .line 1015
    :cond_0
    const-string v5, "Unknow"

    iput-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1020
    .end local v0    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local v1    # "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    .end local v2    # "deviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/usb/UsbDevice;>;"
    :cond_1
    goto :goto_1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUsbName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->currentVendor:Ljava/lang/String;

    return-object v0
.end method

.method private clearMethodData()V
    .locals 2

    .line 1153
    const-string v0, "KaraokeManagerService"

    const-string v1, "clearMethodData"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->methodQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1155
    return-void
.end method

.method private enableKaraokeAtl(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 861
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKaraokeAtl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v0, "enableKaraokeAtl"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v4

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 865
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->requestAmbientLightPermission(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKaraokeAtl exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private filewrite([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 1479
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->fRec:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1481
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->fRec:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    goto :goto_0

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1486
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .locals 2

    .line 265
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeManagerService:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    if-nez v0, :cond_1

    .line 266
    const-class v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeManagerService:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeManagerService:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 270
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 272
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeManagerService:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    return-object v0
.end method

.method private getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "para"    # Ljava/lang/Object;

    .line 1217
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 1218
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1219
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1220
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1221
    :cond_1
    const-class v0, [Ljava/lang/Byte;

    if-ne p1, v0, :cond_2

    .line 1222
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 1223
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_3

    .line 1224
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_3
    return-object p2
.end method

.method private handleIgStatus(I)V
    .locals 3
    .param p1, "value"    # I

    .line 294
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    iget v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->TYPE_LOCAL_IG_ON:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VALUE_LOCAL_IG_ON:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setCommonData(ILjava/lang/String;)I

    move-result v0

    .line 296
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->clearMethodData()V

    .line 297
    .end local v0    # "ret":I
    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->audioStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_releaseKaraokeResource(Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method private hasAtl()Z
    .locals 2

    .line 873
    const-string v0, "ATLS"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isKaraokeVendor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dongleName"    # Ljava/lang/String;

    .line 1410
    const-string v0, "Loostone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileWrite()V
    .locals 2

    .line 1472
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/data/local/tmp/rec.pcm"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->fRec:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1476
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private parseMicEffectFromJson()V
    .locals 9

    .line 969
    const-string v0, "KaraokeManagerService"

    const-string v1, "parseMicEffectFromJson()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :try_start_0
    const-string v0, "karaoke/MicEffectData.json"

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 973
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "effect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 974
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 975
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 977
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 978
    .local v5, "object":Lorg/json/JSONObject;
    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAMP:Z

    if-nez v6, :cond_1

    const-string v6, "needAMP"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 982
    :cond_0
    const-string v6, "KaraokeManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "object":Lorg/json/JSONObject;
    goto :goto_2

    .line 979
    .restart local v5    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v6, "KaraokeManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mic effect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 985
    .end local v4    # "i":I
    :cond_2
    monitor-exit v3

    .line 988
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_3

    .line 985
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 986
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 989
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method

.method private reExecuteMethod()V
    .locals 19

    .line 1158
    move-object/from16 v1, p0

    const-string v0, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reExecuteMethod method size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->methodQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v0, "com.xiaopeng.xuiservice.KaraokeManagerService"

    move-object v2, v0

    .line 1161
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getInstance()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    move-result-object v0

    .line 1162
    .local v0, "instance":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1164
    .local v3, "c":Ljava/lang/Class;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1165
    .local v4, "methods":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->methodQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1166
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1167
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    invoke-interface {v4, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1169
    :cond_0
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1170
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1171
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    .line 1172
    .local v7, "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 1173
    .local v8, "methodName":Ljava/lang/String;
    const-string v9, "KaraokeManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reExecuteMethod methodName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->getParameter()[Ljava/lang/Object;

    move-result-object v9

    .line 1175
    .local v9, "param":[Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->getParameterType()[Ljava/lang/Class;

    move-result-object v10

    .line 1177
    .local v10, "paramType":[Ljava/lang/Class;
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1178
    array-length v11, v9

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v11, :pswitch_data_0

    .end local v7    # "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "param":[Ljava/lang/Object;
    .end local v10    # "paramType":[Ljava/lang/Class;
    goto/16 :goto_2

    .line 1204
    .restart local v7    # "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .restart local v8    # "methodName":Ljava/lang/String;
    .restart local v9    # "param":[Ljava/lang/Object;
    .restart local v10    # "paramType":[Ljava/lang/Class;
    :pswitch_0
    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Class;

    aget-object v17, v10, v15

    aput-object v17, v12, v15

    aget-object v17, v10, v14

    aput-object v17, v12, v14

    aget-object v17, v10, v13

    aput-object v17, v12, v13

    const/16 v16, 0x3

    aget-object v17, v10, v16

    aput-object v17, v12, v16

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1205
    .local v12, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v12, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1206
    new-array v11, v11, [Ljava/lang/Object;

    aget-object v13, v10, v15

    aget-object v14, v9, v15

    invoke-direct {v1, v13, v14}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v15

    const/4 v13, 0x1

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x3

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-virtual {v12, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v7    # "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "param":[Ljava/lang/Object;
    .end local v10    # "paramType":[Ljava/lang/Class;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    goto/16 :goto_2

    .line 1198
    .restart local v7    # "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .restart local v8    # "methodName":Ljava/lang/String;
    .restart local v9    # "param":[Ljava/lang/Object;
    .restart local v10    # "paramType":[Ljava/lang/Class;
    :pswitch_1
    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    aget-object v11, v10, v15

    aput-object v11, v12, v15

    const/4 v11, 0x1

    aget-object v13, v10, v11

    aput-object v13, v12, v11

    const/4 v11, 0x2

    aget-object v13, v10, v11

    aput-object v13, v12, v11

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1199
    .local v11, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1200
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aget-object v13, v10, v15

    aget-object v14, v9, v15

    invoke-direct {v1, v13, v14}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v15

    const/4 v13, 0x1

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    goto :goto_2

    .line 1192
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :pswitch_2
    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    aget-object v11, v10, v15

    aput-object v11, v12, v15

    const/4 v11, 0x1

    aget-object v13, v10, v11

    aput-object v13, v12, v11

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1193
    .restart local v12    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1194
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aget-object v13, v10, v15

    aget-object v14, v9, v15

    invoke-direct {v1, v13, v14}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v15

    const/4 v13, 0x1

    aget-object v14, v10, v13

    aget-object v15, v9, v13

    invoke-direct {v1, v14, v15}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-virtual {v12, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    goto :goto_2

    .line 1186
    .end local v12    # "method":Ljava/lang/reflect/Method;
    :pswitch_3
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    aget-object v11, v10, v15

    aput-object v11, v12, v15

    invoke-virtual {v3, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1187
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1188
    new-array v12, v12, [Ljava/lang/Object;

    aget-object v13, v10, v15

    aget-object v14, v9, v15

    invoke-direct {v1, v13, v14}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getParameter(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v15

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    goto :goto_2

    .line 1180
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :pswitch_4
    new-array v11, v15, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1181
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1182
    new-array v12, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    nop

    .line 1209
    .end local v7    # "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "param":[Ljava/lang/Object;
    .end local v10    # "paramType":[Ljava/lang/Class;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :goto_2
    goto/16 :goto_1

    .line 1210
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->clearMethodData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v0    # "instance":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "methods":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;>;"
    goto :goto_3

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseKaraokeResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1374
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseKaraokeResource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resource status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mic restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v0, 0x0

    move v1, v0

    .line 1377
    .local v1, "ret":I
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    if-eqz v2, :cond_0

    .line 1378
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    .line 1379
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1380
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->clearMethodData()V

    .line 1381
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_Pause(Ljava/lang/String;)I

    .line 1382
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_MicDestroy(Ljava/lang/String;)I

    .line 1383
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->requestAmbientLightPermission(Z)V

    .line 1384
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->releaseKaraokeResource(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    .end local v1    # "ret":I
    .local v0, "ret":I
    move v1, v0

    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private requestAmbientLightPermission(Z)V
    .locals 4
    .param p1, "permission"    # Z

    .line 850
    const-string v0, "KaraokeManagerService"

    const-string v1, "requestAmbientLightPermission"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->requestAmbientLightPermission(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAmbientLightPermission exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private sendBIData(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 915
    const-string v0, "P10141"

    const-string v1, "B002"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 916
    .local v0, "biLog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v1, "serial_number"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->deviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v1, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 921
    return-void
.end method

.method private setSpeechStatus(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1393
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeechStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " speech restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_SPEECH_RESTRICTION:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    sget-boolean v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_SPEECH_RESTRICTION:Z

    if-eqz v0, :cond_2

    .line 1396
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1397
    if-eqz p2, :cond_0

    .line 1398
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->enableSpeechByKaraoke()V

    goto :goto_0

    .line 1400
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->disableSpeechByKaraoke()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :cond_1
    :goto_0
    goto :goto_1

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameter"    # [Ljava/lang/Object;
    .param p3, "parameterType"    # [Ljava/lang/Class;

    .line 1144
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeMethodData method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    .line 1146
    .local v0, "container":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->setMethodName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    move-result-object v1

    .line 1147
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->setParameter([Ljava/lang/Object;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    move-result-object v1

    .line 1148
    invoke-virtual {v1, p3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->setParameterType([Ljava/lang/Class;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;

    .line 1149
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->methodQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1150
    return-void
.end method


# virtual methods
.method public XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "midware"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_Create() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " midware="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "XMS_Create"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v6, 0x3

    aput-object p4, v2, v6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v1, v6

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 439
    .local v0, "start_time":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v4, p1, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->create(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    nop

    .line 446
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 448
    .local v4, "end_time":J
    const-string v2, "KaraokeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMS_Create package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v4, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v3

    .line 446
    .end local v4    # "end_time":J
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 442
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v4, -0x1

    monitor-exit v2

    return v4

    .line 446
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public XMS_Distroy(Ljava/lang/String;)I
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_Distroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->clearMethodData()V

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 457
    .local v0, "start_time":J
    const/4 v2, 0x0

    .line 458
    .local v2, "ret":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 460
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->destroy()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 464
    nop

    .line 465
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 467
    .local v3, "end_time":J
    const-string v5, "KaraokeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMS_Distroy package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return v2

    .line 465
    .end local v3    # "end_time":J
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 461
    :catch_0
    move-exception v4

    .line 462
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    const/4 v5, -0x1

    monitor-exit v3

    return v5

    .line 465
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public XMS_GetEcho(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_GetEcho() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getVolume(I)I

    move-result v0

    return v0
.end method

.method public XMS_GetHandShakeStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_GetHandShakeStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getHandShakeStatus()I

    move-result v0

    return v0
.end method

.method public XMS_GetMicPowerStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_GetMicPowerStatus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getMicPowerStatus()I

    move-result v0

    return v0
.end method

.method public XMS_GetMicStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_GetMicStatus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getMicStatus()I

    move-result v0

    return v0
.end method

.method public XMS_GetToken(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    const-string v0, "KaraokeManagerService"

    const-string v1, "XMS_GetToken()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getToken()I

    move-result v0

    return v0
.end method

.method public XMS_GetVolume(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_GetVolume() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getVolume(I)I

    move-result v0

    return v0
.end method

.method public XMS_MicCreate(Ljava/lang/String;III)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .param p4, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_MicCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "XMS_MicCreate"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v7

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->micCreate(III)I

    move-result v0

    .line 792
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->checkDebugMode()V

    .line 793
    return v0
.end method

.method public XMS_MicDestroy(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_MicDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->micDestroy()I

    goto :goto_0

    .line 808
    :cond_0
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_MicDestroy failed, resumeList size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public XMS_MicGetAvail(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->micGetAvail()I

    move-result v0

    return v0
.end method

.method public XMS_MicGetMinBuf(Ljava/lang/String;II)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_MicGetMinBuf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->micGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public XMS_MicRead(Ljava/lang/String;[BI)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->micRead([BI)I

    move-result v0

    return v0
.end method

.method public XMS_Pause(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_Pause() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->setSpeechStatus(Ljava/lang/String;Z)V

    .line 598
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 599
    const-string v2, "XMS_Pause"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-direct {p0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 600
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->pause()I

    move-result v2

    move v0, v2

    .line 602
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setKaraokeOn(Z)V

    .line 605
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->requestAmbientLightPermission(Z)V

    .line 607
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->sendBIData(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 609
    :cond_1
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMS_Pause() failed, resumeList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    return v0
.end method

.method public XMS_PausePlay(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_PausePlay() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 687
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->setSpeechStatus(Ljava/lang/String;Z)V

    .line 688
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 689
    const-string v2, "XMS_PausePlay"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-direct {p0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 690
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->pausePlay()I

    move-result v2

    move v0, v2

    .line 692
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 694
    :cond_0
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMS_PausePlay() failed, resumeList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :goto_0
    return v0
.end method

.method public XMS_Read(Ljava/lang/String;[BI)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKReadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->read([BI)I

    move-result v2

    move v0, v2

    .line 751
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_isAtlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2, p2, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->ResBufferWrite([BI)V

    .line 754
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_OFF:I

    if-eq v2, v3, :cond_1

    .line 755
    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_ON:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    .line 757
    :cond_1
    monitor-exit v1

    .line 758
    return v0

    .line 757
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_RecCreate(Ljava/lang/String;III)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .param p4, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RecCreate() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "XMS_RecCreate"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v7

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getMicStatus()I

    move-result v1

    if-nez v1, :cond_0

    move v3, v5

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    .line 725
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recCreate(III)I

    move-result v2

    move v0, v2

    .line 727
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    if-eqz v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->VisualizerStart(I)V

    .line 730
    :cond_1
    monitor-exit v1

    .line 731
    return v0

    .line 730
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_RecDestroy(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RecDestroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->VisualizerStop()V

    .line 769
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_OFF:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    .line 770
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recDestroy()I

    move-result v2

    move v0, v2

    .line 771
    monitor-exit v1

    .line 772
    return v0

    .line 771
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_RecGetAvail(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recGetAvail()I

    move-result v0

    return v0
.end method

.method public XMS_RecGetMinBuf(Ljava/lang/String;II)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RecGetMinBuf() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public XMS_RecStart(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RecStart() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "XMS_RecStart"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recStart()I

    move-result v2

    move v0, v2

    .line 632
    monitor-exit v1

    .line 633
    return v0

    .line 632
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_RecStop(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RecStop() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "XMS_RecStop"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->recStop()I

    move-result v2

    move v0, v2

    .line 621
    monitor-exit v1

    .line 622
    return v0

    .line 621
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callBackFunc"    # Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 414
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_RegisterCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 416
    return-void
.end method

.method public XMS_Resume(Ljava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_Resume() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    if-nez v1, :cond_0

    .line 641
    const/4 v1, 0x2

    const v2, 0xbb80

    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_requestKaraokeResource(Ljava/lang/String;III)I

    .line 642
    return v0

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->setSpeechStatus(Ljava/lang/String;Z)V

    .line 646
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 647
    const-string v2, "XMS_Resume"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-direct {p0, v2, v4, v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 648
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    .line 650
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setKaraokeOn(Z)V

    .line 652
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->resume()I

    move-result v4

    move v0, v4

    .line 653
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->notifyNewMediaStream()V

    .line 654
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->requestAmbientLightPermission(Z)V

    .line 656
    const-string v2, "persist.karaoke.atl.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->enableKaraokeAtl(Z)V

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeTime:J

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 660
    :cond_3
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMS_Resume() failed pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resumeList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_0
    return v0
.end method

.method public XMS_ResumePlay(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_ResumePlay() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->setSpeechStatus(Ljava/lang/String;Z)V

    .line 671
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 672
    const-string v2, "XMS_ResumePlay"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-direct {p0, v2, v4, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 673
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->resumePlay()I

    move-result v2

    move v0, v2

    .line 675
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 677
    :cond_0
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMS_ResumePlay() failed, resumeList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resumeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return v0
.end method

.method public XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "micPath"    # Ljava/lang/String;
    .param p4, "mixPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SaveRec() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " micPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mixPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "XMS_SaveRec"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v6, 0x3

    aput-object p4, v2, v6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v6

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->saveRec(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public XMS_SetCommonData(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 909
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetCommonData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v0, "XMS_SetCommonData"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setCommonData(ILjava/lang/String;)I

    .line 912
    return-void
.end method

.method public XMS_SetEcho(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "echo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetEcho() pkgName= echo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "XMS_SetEcho"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setVolume(II)I

    move-result v0

    return v0
.end method

.method public XMS_SetOutPutPath(ZLjava/lang/String;)V
    .locals 6
    .param p1, "inCar"    # Z
    .param p2, "productId"    # Ljava/lang/String;

    .line 903
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetOutPutPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",productId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v0, "XMS_SetOutPutPath"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setOutPutPath(ZLjava/lang/String;)V

    .line 906
    return-void
.end method

.method public XMS_SetRecMode(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetRecMode() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "XMS_SetRecMode"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setRecMode(I)I

    move-result v0

    return v0
.end method

.method public XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetSignedToken() token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "XMS_SetSignedToken"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setSignedToken(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public XMS_SetVolume(Ljava/lang/String;II)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "vol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_SetVolume() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 508
    return v0

    .line 510
    :cond_0
    const-string v2, "XMS_SetVolume"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v7

    invoke-direct {p0, v2, v4, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 511
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dispatchKaraokeCallback(II)V

    .line 512
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setVolume(II)I

    move-result v0

    .line 513
    return v0
.end method

.method public XMS_ShowToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 898
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_ShowToast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 900
    return-void
.end method

.method public XMS_StopSaveRec(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_StopSaveRec() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "XMS_StopSaveRec"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->stopSaveRec()I

    move-result v0

    return v0
.end method

.method public XMS_TrackCreate(Ljava/lang/String;III)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .param p4, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_TrackCreate() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "XMS_TrackCreate"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v7

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getMicStatus()I

    move-result v1

    if-nez v1, :cond_0

    move v3, v5

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    .line 547
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    if-nez v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->VisualizerStart(I)V

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->trackCreate(III)I

    move-result v2

    move v0, v2

    .line 552
    monitor-exit v1

    .line 553
    return v0

    .line 552
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_TrackDestroy(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_TrackDestroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->dongleStatus:Z

    if-nez v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->VisualizerStop()V

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->trackDestroy()I

    move-result v2

    move v0, v2

    .line 588
    monitor-exit v1

    .line 589
    return v0

    .line 588
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_TrackGetAvail(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->trackGetAvail()I

    move-result v0

    .line 576
    return v0
.end method

.method public XMS_TrackGetLatency(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->trackGetLatency()I

    move-result v0

    return v0
.end method

.method public XMS_TrackGetMinBuf(Ljava/lang/String;II)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_TrackGetMinBuf() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->trackGetMinBuf(II)I

    move-result v0

    return v0
.end method

.method public XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callBackFunc"    # Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 421
    return-void
.end method

.method public XMS_Write(Ljava/lang/String;[BII)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMicSDKWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v2, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->write([BII)I

    move-result v2

    move v0, v2

    .line 566
    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->visualizer_rec_status:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->VISUALIZER_REC_ON:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_isAtlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mKaraokeVisualizer:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    invoke-virtual {v2, p2, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->ResBufferWrite([BI)V

    .line 568
    :cond_0
    monitor-exit v1

    .line 569
    return v0

    .line 568
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public XMS_aiWakeUp()I
    .locals 4

    .line 822
    const-string v0, "KaraokeManagerService"

    const-string v1, "XMS_aiWakeUp"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "XMS_aiWakeUp"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 824
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    const-string v2, "changba"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->wakeupSpeech(Ljava/lang/String;)V

    .line 825
    return v1
.end method

.method public XMS_atlSwitch(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 815
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_atlSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "XMS_atlSwitch"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v4

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->storeMethodData(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 817
    return v4
.end method

.method public XMS_clientDied()I
    .locals 5

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setKaraokeOn(Z)V

    .line 955
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->enableSpeechByKaraoke()V

    .line 957
    :try_start_0
    const-string v1, "dead"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_PausePlay(Ljava/lang/String;)I

    .line 958
    const-string v1, "dead"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_Pause(Ljava/lang/String;)I

    .line 959
    const-string v1, "dead"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_TrackDestroy(Ljava/lang/String;)I

    .line 960
    const-string v1, "dead"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_RecDestroy(Ljava/lang/String;)I

    .line 961
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->requestAmbientLightPermission(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    goto :goto_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KaraokeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binderDied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public XMS_connectMicFlow()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.karaoke.recommend.CONNECT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 892
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 894
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public XMS_getBuyMicUrl()Ljava/lang/String;
    .locals 1

    .line 883
    const-string v0, "https://mall.xiaopeng.com/product/1352927229410332673"

    .line 884
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public XMS_getMicName()Ljava/lang/String;
    .locals 2

    .line 836
    const-string v0, "KaraokeManagerService"

    const-string v1, "XMS_getMicName"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string/jumbo v0, "\u5c0f\u9e4f\u65e0\u7ebf\u9ea6\u514b\u98ce"

    .line 838
    .local v0, "micName":Ljava/lang/String;
    return-object v0
.end method

.method public XMS_getMicSoundEffectMap()Ljava/util/Map;
    .locals 4

    .line 992
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 993
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMS_getMicSoundEffectMap() size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->micSoundEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 995
    const-string v1, "KaraokeManagerService"

    const-string v2, "XMS_getMicSoundEffectMap micSoundEffectMap size is 0"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->parseMicEffectFromJson()V

    .line 998
    :cond_0
    return-object v0
.end method

.method public XMS_hasAtl()Z
    .locals 2

    .line 830
    const-string v0, "KaraokeManagerService"

    const-string v1, "XMS_hasAtl"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->hasAtl()Z

    move-result v0

    return v0
.end method

.method public XMS_isAtlEnabled()Z
    .locals 2

    .line 878
    const-string v0, "persist.karaoke.atl.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public XMS_releaseKaraokeResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "ret":I
    sget v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1368
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->releaseKaraokeResource(Ljava/lang/String;)I

    move-result v0

    .line 1370
    :cond_0
    return v0
.end method

.method public XMS_requestKaraokeResource(Ljava/lang/String;III)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channel"    # I
    .param p4, "bufferSize"    # I

    .line 1348
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_requestKaraokeResource pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mic restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const/4 v0, 0x0

    move v1, v0

    .line 1351
    .local v1, "ret":I
    :try_start_0
    sget v2, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->KARAOKE_MIC_RESTRICTION:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    if-nez v2, :cond_1

    .line 1352
    const/4 v2, 0x0

    .line 1353
    .local v2, "requestBinder":Landroid/os/IBinder;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->resourcesOccupied:Z

    .line 1354
    const-string v4, ""

    invoke-virtual {p0, p1, v0, v4, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I

    .line 1355
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_MicCreate(Ljava/lang/String;III)I

    .line 1356
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->XMS_Resume(Ljava/lang/String;)I

    .line 1357
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->audioStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    nop

    :cond_0
    invoke-interface {v4, p1, v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->requestKaraokeResource(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v2    # "requestBinder":Landroid/os/IBinder;
    :cond_1
    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1362
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public XMS_setAtlEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 843
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMS_setAtlEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 845
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->enableKaraokeAtl(Z)V

    .line 846
    const-string v1, "persist.karaoke.atl.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public XMS_setMusicInfo([Ljava/lang/String;)I
    .locals 6
    .param p1, "info"    # [Ljava/lang/String;

    .line 929
    const-string v0, "KaraokeManagerService"

    const-string v1, "XMS_setMusicInfo"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    .line 932
    .local v1, "musicInfo":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    new-instance v2, Lorg/json/JSONObject;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 934
    .local v2, "musicInfoObj":Lorg/json/JSONObject;
    const-string v3, "title"

    .line 935
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "singer"

    .line 936
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setSinger(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "lyricist"

    .line 937
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setLyricist(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "producer"

    .line 938
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setProducer(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "songwriter"

    .line 939
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setSongwriter(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "songDuration"

    .line 940
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setSongDuration(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    move-result-object v3

    const-string v4, "premiumStatus"

    .line 941
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->setPremiumStatus(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;

    .line 943
    const-string v3, "KaraokeManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XMS_setMusicInfo title "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " singer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lyricist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getLyricist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " producer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getProducer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " songwriter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getSongwriter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " songDuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getSongDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " premiumStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;->getPremiumStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v1    # "musicInfo":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MusicInfo;
    .end local v2    # "musicInfoObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 945
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KaraokeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XMS_setMusicInfo exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public XMS_setMusicLyric([Ljava/lang/String;)I
    .locals 1
    .param p1, "lyric"    # [Ljava/lang/String;

    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public byteArrayToObject([B)Ljava/lang/Object;
    .locals 4
    .param p1, "bytes"    # [B

    .line 1246
    const/4 v0, 0x0

    .line 1248
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1249
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1250
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 1251
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 1252
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 1253
    :catch_1
    move-exception v1

    .line 1254
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1257
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    nop

    .line 1258
    :goto_1
    return-object v0
.end method

.method public dispatchKaraokeCallback(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "value"    # I

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 426
    .local v1, "listener":Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V

    .line 427
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->volumeEffectCallBack(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
    goto :goto_0

    .line 431
    :cond_0
    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 380
    return-void
.end method

.method public enableCarMicrophone(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "position"    # I

    .line 1414
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarMicrophone enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->enableCarMicrophone(ZI)I

    move-result v0

    .line 1417
    return v0
.end method

.method public enableVocalRemove(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "level"    # I

    .line 1431
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemove enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->enableVocalRemove(ZI)I

    move-result v0

    .line 1434
    return v0
.end method

.method public enableVocalRemoveDynamic(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1448
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemoveDynamic enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->enableVocalRemoveDynamic(Z)V

    .line 1450
    return-void
.end method

.method public getBgmVolume()I
    .locals 2

    .line 1463
    const-string v0, "KaraokeManagerService"

    const-string v1, "getBgmVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getBgmVolume()I

    move-result v0

    return v0
.end method

.method public getCarMicrophonePosition()I
    .locals 2

    .line 1426
    const-string v0, "KaraokeManagerService"

    const-string v1, "getCarMicrophonePosition"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getCarMicrophonePosition()I

    move-result v0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 384
    const-string v0, "KaraokeManagerService"

    return-object v0
.end method

.method public getVocalRemoveLevel()I
    .locals 2

    .line 1443
    const-string v0, "KaraokeManagerService"

    const-string v1, "getVocalRemoveLevel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->getVocalRemoveLevel()I

    move-result v0

    return v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 363
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->addAudioStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    throw v0
.end method

.method public isCarMicrophoneEnable()Z
    .locals 2

    .line 1421
    const-string v0, "KaraokeManagerService"

    const-string v1, "isCarMicrophoneEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->isCarMicrophoneEnable()Z

    move-result v0

    return v0
.end method

.method public isVocalRemoveDynamicEnable()Z
    .locals 2

    .line 1453
    const-string v0, "KaraokeManagerService"

    const-string v1, "isVocalRemoveDynamicEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->isVocalRemoveDynamicEnable()Z

    move-result v0

    return v0
.end method

.method public isVocalRemoveEnable()Z
    .locals 2

    .line 1438
    const-string v0, "KaraokeManagerService"

    const-string v1, "isVocalRemoveEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->isVocalRemoveEnable()Z

    move-result v0

    return v0
.end method

.method public objectToByteArray(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1230
    const/4 v0, 0x0

    .line 1231
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1233
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1234
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1235
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1236
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    .line 1237
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 1238
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v2

    .line 1240
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1242
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    const-string v0, "KaraokeService"

    .line 307
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x1

    .line 312
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 317
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    nop

    .line 320
    return v2

    .line 317
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "KaraokeManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 370
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->removeAudioStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;)V

    .line 371
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbilentManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->mAmbientLightEventListener:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->unregisterListener(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release(), exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    throw v0
.end method

.method public setBgmVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 1458
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBgmVolume volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->karaokeService:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;->setBgmVolume(I)V

    .line 1460
    return-void
.end method
