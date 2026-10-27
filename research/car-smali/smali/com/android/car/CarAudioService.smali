.class public Lcom/android/car/CarAudioService;
.super Landroid/car/media/ICarAudio$Stub;
.source "CarAudioService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final CONTEXT_NUMBERS:[I

.field private static final DEFAULT_AUDIO_USAGE:I = 0x1

.field private static final STREAM_TYPES:[I

.field private static final STREAM_TYPE_USAGES:[I

.field private static final USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private final mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

.field private final mCarAudioDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/CarAudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

.field private final mContext:Landroid/content/Context;

.field private final mContextToBus:Landroid/util/SparseIntArray;

.field private final mImplLock:Ljava/lang/Object;

.field private final mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUseDynamicRouting:Z

.field private final mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer<",
            "Landroid/car/media/ICarVolumeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 69
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/car/CarAudioService;->CONTEXT_NUMBERS:[I

    .line 80
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    .line 84
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    .line 89
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPE_USAGES:[I

    .line 96
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v7, 0x6

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v9, 0x7

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0xc

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v0, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v0, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Landroid/car/media/ICarAudio$Stub;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Lcom/android/car/CarAudioService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarAudioService$1;-><init>(Lcom/android/car/CarAudioService;)V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 172
    new-instance v0, Lcom/android/car/BinderInterfaceContainer;

    invoke-direct {v0}, Lcom/android/car/BinderInterfaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 178
    new-instance v0, Lcom/android/car/CarAudioService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarAudioService$2;-><init>(Lcom/android/car/CarAudioService;)V

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    iput-object p1, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 204
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 205
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarAudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarAudioService;

    .line 65
    invoke-direct {p0}, Lcom/android/car/CarAudioService;->getSuggestedAudioUsage()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/CarAudioService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarAudioService;

    .line 65
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/CarAudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarAudioService;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->callbackMasterMuteChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarAudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarAudioService;->callbackGroupVolumeChange(II)V

    return-void
.end method

.method private callbackGroupVolumeChange(II)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "flags"    # I

    .line 277
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 279
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v2, p1, p2}, Landroid/car/media/ICarVolumeCallback;->onGroupVolumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_1

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onGroupVolumeChanged"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method private callbackMasterMuteChange(I)V
    .locals 5
    .param p1, "flags"    # I

    .line 288
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 290
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v2, p1}, Landroid/car/media/ICarVolumeCallback;->onMasterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_1

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onMasterMuteChanged"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method private createAudioPatchLocked(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 16
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "usage"    # I
    .param p3, "gainInMillibels"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, "sourcePortInfo":Landroid/media/AudioDeviceInfo;
    iget-object v3, v0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 647
    .local v3, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    .line 648
    .local v8, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 650
    move-object v2, v8

    .line 651
    goto :goto_1

    .line 647
    .end local v8    # "info":Landroid/media/AudioDeviceInfo;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 654
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified source is not available: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    move/from16 v5, p2

    invoke-direct {v0, v5}, Lcom/android/car/CarAudioService;->getAudioPort(I)Landroid/media/AudioDevicePort;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sink not available for usage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-static/range {p2 .. p2}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 658
    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDevicePort;

    .line 665
    .local v7, "sinkPort":Landroid/media/AudioDevicePort;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v4, v4, v8}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v9

    .line 667
    .local v9, "sinkConfig":Landroid/media/AudioPortConfig;
    const-string v10, "CAR.AUDIO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAudioPatch sinkConfig: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v10, Lcom/android/car/CarAudioDeviceInfo;

    invoke-direct {v10, v2}, Lcom/android/car/CarAudioDeviceInfo;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 671
    .local v10, "helper":Lcom/android/car/CarAudioDeviceInfo;
    invoke-virtual {v10}, Lcom/android/car/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v11

    const-string v12, "Gain controller not available for source port"

    invoke-static {v11, v12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioGain;

    .line 675
    .local v11, "audioGain":Landroid/media/AudioGain;
    nop

    .line 676
    invoke-virtual {v11}, Landroid/media/AudioGain;->channelMask()I

    move-result v12

    new-array v13, v4, [I

    aput p3, v13, v6

    .line 675
    invoke-virtual {v11, v4, v12, v13, v6}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v12

    .line 680
    .local v12, "audioGainConfig":Landroid/media/AudioGainConfig;
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v13

    invoke-virtual {v13, v6, v4, v4, v12}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v13

    .line 684
    .local v13, "sourceConfig":Landroid/media/AudioPortConfig;
    new-array v14, v4, [Landroid/media/AudioPatch;

    aput-object v8, v14, v6

    move-object v8, v14

    .line 685
    .local v8, "patch":[Landroid/media/AudioPatch;
    new-array v14, v4, [Landroid/media/AudioPortConfig;

    aput-object v13, v14, v6

    new-array v4, v4, [Landroid/media/AudioPortConfig;

    aput-object v9, v4, v6

    invoke-static {v8, v14, v4}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v4

    .line 688
    .local v4, "result":I
    if-nez v4, :cond_2

    .line 692
    aget-object v14, v8, v6

    const-string v6, "createAudioPatch didn\'t provide expected single handle"

    invoke-static {v14, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v6, "CAR.AUDIO"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio patch created: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v1, v8, v0

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v1, Landroid/car/media/CarAudioPatchHandle;

    aget-object v0, v8, v0

    invoke-direct {v1, v0}, Landroid/car/media/CarAudioPatchHandle;-><init>(Landroid/media/AudioPatch;)V

    return-object v1

    .line 689
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAudioPatch failed with code "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 811
    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAudioControl()Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    .locals 3

    .line 907
    :try_start_0
    invoke-static {}, Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;->getService()Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "CAR.AUDIO"

    const-string v2, "IAudioControl service not registered yet"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 908
    :catch_1
    move-exception v0

    .line 909
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AUDIO"

    const-string v2, "Failed to get IAudioControl service"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 913
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAudioPort(I)Landroid/media/AudioDevicePort;
    .locals 4
    .param p1, "usage"    # I

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/car/CarAudioService;->getVolumeGroupIdForUsage(I)I

    move-result v0

    .line 819
    .local v0, "groupId":I
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find CarVolumeGroup by usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarVolumeGroup;

    .line 822
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/CarVolumeGroup;->getAudioDevicePortForContext(I)Landroid/media/AudioDevicePort;

    move-result-object v2

    return-object v2
.end method

.method private getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;
    .locals 3
    .param p1, "groupId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getDynamicAudioPolicy(Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;)Landroid/media/audiopolicy/AudioPolicy;
    .locals 18
    .param p1, "audioControl"    # Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;

    move-object/from16 v1, p0

    .line 456
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v2, v1, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 457
    .local v2, "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 460
    iget-object v0, v1, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 461
    .local v4, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    array-length v0, v4

    if-nez v0, :cond_0

    .line 462
    const-string v0, "CAR.AUDIO"

    const-string v3, "getDynamicAudioPolicy, no output device available, ignore"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_0
    array-length v0, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v0, :cond_2

    aget-object v8, v4, v6

    .line 466
    .local v8, "info":Landroid/media/AudioDeviceInfo;
    const-string v9, "CAR.AUDIO"

    const-string v10, "output id=%d address=%s type=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 467
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v3

    .line 466
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/16 v9, 0x15

    if-ne v7, v9, :cond_1

    .line 469
    new-instance v7, Lcom/android/car/CarAudioDeviceInfo;

    invoke-direct {v7, v8}, Lcom/android/car/CarAudioDeviceInfo;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 472
    .local v7, "carInfo":Lcom/android/car/CarAudioDeviceInfo;
    invoke-virtual {v7}, Lcom/android/car/CarAudioDeviceInfo;->getBusNumber()I

    move-result v9

    if-ltz v9, :cond_1

    .line 473
    iget-object v9, v1, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/android/car/CarAudioDeviceInfo;->getBusNumber()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    const-string v9, "CAR.AUDIO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Valid bus found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v7    # "carInfo":Lcom/android/car/CarAudioDeviceInfo;
    .end local v8    # "info":Landroid/media/AudioDeviceInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 481
    :cond_2
    :try_start_0
    sget-object v0, Lcom/android/car/CarAudioService;->CONTEXT_NUMBERS:[I

    array-length v3, v0

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_4

    aget v8, v0, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    .local v8, "contextNumber":I
    move-object/from16 v9, p1

    :try_start_1
    invoke-interface {v9, v8}, Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;->getBusForContext(I)I

    move-result v10

    .line 483
    .local v10, "busNumber":I
    iget-object v11, v1, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    iget-object v11, v1, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/CarAudioDeviceInfo;

    .line 485
    .local v11, "info":Lcom/android/car/CarAudioDeviceInfo;
    if-nez v11, :cond_3

    .line 486
    const-string v12, "CAR.AUDIO"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No bus configured for context: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 481
    .end local v8    # "contextNumber":I
    .end local v10    # "busNumber":I
    .end local v11    # "info":Lcom/android/car/CarAudioDeviceInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 489
    :catch_0
    move-exception v0

    goto :goto_2

    .line 491
    :cond_4
    move-object/from16 v9, p1

    goto :goto_3

    .line 489
    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v3, "CAR.AUDIO"

    const-string v6, "Error mapping context to physical bus"

    invoke-static {v3, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    move v0, v5

    .local v0, "i":I
    :goto_4
    iget-object v3, v1, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 496
    iget-object v3, v1, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 497
    .local v3, "busNumber":I
    const/4 v6, 0x0

    .line 498
    .local v6, "hasContext":Z
    iget-object v8, v1, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/CarAudioDeviceInfo;

    .line 499
    .local v8, "info":Lcom/android/car/CarAudioDeviceInfo;
    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 500
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getSampleRate()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v10

    .line 501
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v10

    .line 502
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getChannelCount()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v10

    .line 503
    invoke-virtual {v10}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v10

    .line 504
    .local v10, "mixFormat":Landroid/media/AudioFormat;
    new-instance v11, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v11}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 505
    .local v11, "mixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    move v12, v6

    move v6, v5

    .local v6, "j":I
    .local v12, "hasContext":Z
    :goto_5
    iget-object v13, v1, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 506
    iget-object v13, v1, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-ne v13, v3, :cond_6

    .line 507
    const/4 v12, 0x1

    .line 508
    iget-object v13, v1, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 509
    .local v13, "contextNumber":I
    invoke-direct {v1, v13}, Lcom/android/car/CarAudioService;->getUsagesForContext(I)[I

    move-result-object v14

    .line 510
    .local v14, "usages":[I
    array-length v15, v14

    :goto_6
    if-ge v5, v15, :cond_5

    aget v7, v14, v5

    .line 511
    .local v7, "usage":I
    move-object/from16 v16, v4

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .end local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .local v16, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 512
    invoke-virtual {v4, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 511
    move/from16 v17, v7

    const/4 v7, 0x1

    invoke-virtual {v11, v4, v7}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 510
    .end local v7    # "usage":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    const/4 v7, 0x1

    goto :goto_6

    .line 515
    .end local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    :cond_5
    move-object/from16 v16, v4

    .end local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    const-string v4, "CAR.AUDIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bus number: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " contextNumber: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sampleRate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getSampleRate()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " channels: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getChannelCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " usages: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v13    # "contextNumber":I
    .end local v14    # "usages":[I
    goto :goto_7

    .line 505
    .end local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    :cond_6
    move-object/from16 v16, v4

    .end local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v16

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 522
    .end local v6    # "j":I
    .end local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    if-eqz v12, :cond_8

    .line 526
    new-instance v4, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-virtual {v11}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 527
    invoke-virtual {v4, v10}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v4

    .line 528
    invoke-virtual {v8}, Lcom/android/car/CarAudioDeviceInfo;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/audiopolicy/AudioMix$Builder;->setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v4

    .line 529
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v4

    .line 530
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v4

    .line 531
    .local v4, "audioMix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v2, v4}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .end local v3    # "busNumber":I
    .end local v4    # "audioMix":Landroid/media/audiopolicy/AudioMix;
    .end local v8    # "info":Lcom/android/car/CarAudioDeviceInfo;
    .end local v10    # "mixFormat":Landroid/media/AudioFormat;
    .end local v11    # "mixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local v12    # "hasContext":Z
    goto :goto_8

    .line 495
    :cond_8
    const/4 v5, 0x1

    :goto_8
    add-int/lit8 v0, v0, 0x1

    move v7, v5

    move-object/from16 v4, v16

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 536
    .end local v0    # "i":I
    .end local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .local v4, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    :cond_9
    move-object/from16 v16, v4

    .end local v4    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .restart local v16    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    iget-object v0, v1, Lcom/android/car/CarAudioService;->mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyVolumeCallback(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 538
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestedAudioUsage()I
    .locals 4

    .line 829
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 830
    .local v0, "callState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 831
    const/4 v1, 0x6

    return v1

    .line 832
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 833
    return v2

    .line 835
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 836
    invoke-virtual {v2}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    .line 837
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$CarAudioService$GmcZA0zXB8mu4enjpmQnD7hZdQI;->INSTANCE:Lcom/android/car/-$$Lambda$CarAudioService$GmcZA0zXB8mu4enjpmQnD7hZdQI;

    .line 838
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 839
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 840
    .local v2, "playbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 842
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    return v1

    .line 845
    :cond_2
    return v1
.end method

.method private getUsageForStreamType(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 872
    const/4 v0, -0x1

    .line 873
    .local v0, "usage":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 889
    :pswitch_0
    const/4 v0, 0x2

    .line 890
    goto :goto_0

    .line 892
    :pswitch_1
    const/16 v0, 0xc

    .line 893
    goto :goto_0

    .line 895
    :pswitch_2
    const/4 v0, 0x2

    .line 896
    goto :goto_0

    .line 886
    :pswitch_3
    const/4 v0, 0x1

    .line 887
    goto :goto_0

    .line 883
    :pswitch_4
    const/4 v0, 0x5

    .line 884
    goto :goto_0

    .line 876
    :pswitch_5
    const/4 v0, 0x2

    .line 877
    nop

    .line 900
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUsagesForContext(I)[I
    .locals 3
    .param p1, "contextNumber"    # I

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 544
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 545
    sget-object v2, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$CarAudioService$J9DwxvMO0zVxnighDlNKB0skLsM;->INSTANCE:Lcom/android/car/-$$Lambda$CarAudioService$J9DwxvMO0zVxnighDlNKB0skLsM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getUsagesForContext$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 548
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getUsagesForVolumeGroupId$1(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 778
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private releaseAudioPatchLocked(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 6
    .param p1, "carPatch"    # Landroid/car/media/CarAudioPatchHandle;

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v1

    .line 706
    .local v1, "result":I
    if-nez v1, :cond_3

    .line 711
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPatch;

    .line 712
    .local v3, "patch":Landroid/media/AudioPatch;
    invoke-virtual {p1, v3}, Landroid/car/media/CarAudioPatchHandle;->represents(Landroid/media/AudioPatch;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 714
    invoke-static {v3}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v1

    .line 715
    if-nez v1, :cond_0

    .line 718
    return-void

    .line 716
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAudioPatch failed with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    .end local v3    # "patch":Landroid/media/AudioPatch;
    :cond_1
    goto :goto_0

    .line 723
    :cond_2
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAudioPatch found no match for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 707
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listAudioPatches failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setupDynamicRouting()V
    .locals 6

    .line 366
    invoke-static {}, Lcom/android/car/CarAudioService;->getAudioControl()Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 367
    .local v0, "audioControl":Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    if-nez v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarAudioService;->getDynamicAudioPolicy(Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;)Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v1

    .line 371
    .local v1, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    if-nez v1, :cond_1

    .line 372
    const-string v2, "CAR.AUDIO"

    const-string v3, "setupDynamicRouting audioPolicy is NULL"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v2

    .line 376
    .local v2, "r":I
    if-nez v2, :cond_2

    .line 379
    iput-object v1, p0, Lcom/android/car/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 380
    return-void

    .line 377
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAudioPolicy failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setupLegacyVolumeChangedListener()V
    .locals 3

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    return-void
.end method

.method private setupVolumeGroups()V
    .locals 12

    .line 383
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No bus device is configured to setup volume groups"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 385
    new-instance v0, Lcom/android/car/CarVolumeGroupsHelper;

    iget-object v2, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-direct {v0, v2, v3}, Lcom/android/car/CarVolumeGroupsHelper;-><init>(Landroid/content/Context;I)V

    .line 387
    .local v0, "helper":Lcom/android/car/CarVolumeGroupsHelper;
    invoke-virtual {v0}, Lcom/android/car/CarVolumeGroupsHelper;->loadVolumeGroups()[Lcom/android/car/CarVolumeGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    .line 388
    iget-object v2, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 389
    .local v5, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v5}, Lcom/android/car/CarVolumeGroup;->getContexts()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_2
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 390
    .local v9, "contextNumber":I
    iget-object v10, p0, Lcom/android/car/CarAudioService;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 391
    .local v10, "busNumber":I
    iget-object v11, p0, Lcom/android/car/CarAudioService;->mCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/CarAudioDeviceInfo;

    invoke-virtual {v5, v9, v10, v11}, Lcom/android/car/CarVolumeGroup;->bind(IILcom/android/car/CarAudioDeviceInfo;)V

    .line 389
    .end local v9    # "contextNumber":I
    .end local v10    # "busNumber":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 395
    :cond_1
    invoke-virtual {v5}, Lcom/android/car/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/car/CarVolumeGroup;->setCurrentGainIndex(I)V

    .line 397
    const-string v6, "CAR.AUDIO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed volume group: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v5    # "group":Lcom/android/car/CarVolumeGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 400
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarAudioService;->validateVolumeGroups()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    return-void

    .line 401
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid volume groups configuration"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateVolumeGroups()Z
    .locals 12

    .line 420
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 421
    .local v0, "contextSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 422
    .local v1, "busNumberSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 424
    .local v6, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v6}, Lcom/android/car/CarVolumeGroup;->getContexts()[I

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    .line 425
    .local v10, "context":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 426
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Context appears in two groups: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v4

    .line 429
    :cond_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v10    # "context":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v6}, Lcom/android/car/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_3

    aget v10, v7, v9

    .line 434
    .local v10, "busNumber":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 435
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bus appears in two groups: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v4

    .line 438
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v10    # "busNumber":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 422
    .end local v6    # "group":Lcom/android/car/CarVolumeGroup;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 443
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sget-object v3, Lcom/android/car/CarAudioService;->CONTEXT_NUMBERS:[I

    array-length v3, v3

    if-eq v2, v3, :cond_5

    .line 444
    const-string v2, "CAR.AUDIO"

    const-string v3, "Some contexts are not assigned to group"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assigned contexts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All contexts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/car/CarAudioService;->CONTEXT_NUMBERS:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v4

    .line 451
    :cond_5
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "usage"    # I
    .param p3, "gainInMillibels"    # I

    .line 628
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarAudioService;->createAudioPatchLocked(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 631
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 243
    const-string v0, "*CarAudioService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tRun in legacy mode? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tMaster mute? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 248
    iget-boolean v0, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 250
    .local v3, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v3, p1}, Lcom/android/car/CarVolumeGroup;->dump(Ljava/io/PrintWriter;)V

    .line 249
    .end local v3    # "group":Lcom/android/car/CarVolumeGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method public getCurrentAudioFocusUsage()I
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentAudioFocusAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method

.method public getExternalSources()[Ljava/lang/String;
    .locals 10

    .line 586
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 591
    .local v2, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v3, v2

    if-nez v3, :cond_0

    .line 592
    const-string v3, "CAR.AUDIO"

    const-string v4, "getExternalSources, no input devices found."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 597
    .local v5, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .end local v5    # "info":Landroid/media/AudioDeviceInfo;
    :pswitch_0
    goto :goto_1

    .line 611
    .restart local v5    # "info":Landroid/media/AudioDeviceInfo;
    :pswitch_1
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "address":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 613
    const-string v7, "CAR.AUDIO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarded device with empty address, type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 613
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v5    # "info":Landroid/media/AudioDeviceInfo;
    .end local v6    # "address":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 621
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 622
    .end local v1    # "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "devices":[Landroid/media/AudioDeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupMaxVolume(I)I
    .locals 3
    .param p1, "groupId"    # I

    .line 302
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 306
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;

    move-result-object v1

    .line 311
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/CarVolumeGroup;->getMaxGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 312
    .end local v1    # "group":Lcom/android/car/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGroupMinVolume(I)I
    .locals 3
    .param p1, "groupId"    # I

    .line 320
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 324
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;

    move-result-object v1

    .line 329
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/CarVolumeGroup;->getMinGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 330
    .end local v1    # "group":Lcom/android/car/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGroupVolume(I)I
    .locals 3
    .param p1, "groupId"    # I

    .line 338
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 342
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;

    move-result-object v1

    .line 347
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 348
    .end local v1    # "group":Lcom/android/car/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsagesForVolumeGroupId(I)[I
    .locals 6
    .param p1, "groupId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 765
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 766
    const/4 v1, 0x1

    new-array v1, v1, [I

    sget-object v3, Lcom/android/car/CarAudioService;->STREAM_TYPE_USAGES:[I

    aget v3, v3, p1

    aput v3, v1, v2

    monitor-exit v0

    return-object v1

    .line 769
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;

    move-result-object v1

    .line 770
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    nop

    .line 771
    invoke-virtual {v1}, Lcom/android/car/CarVolumeGroup;->getContexts()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 772
    .local v3, "contexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v4, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 774
    sget-object v5, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 775
    sget-object v5, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v5, Lcom/android/car/-$$Lambda$CarAudioService$6uNaG9JCO3ZaGMp0VeCNheVksZ8;->INSTANCE:Lcom/android/car/-$$Lambda$CarAudioService$6uNaG9JCO3ZaGMp0VeCNheVksZ8;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 779
    .end local v1    # "group":Lcom/android/car/CarVolumeGroup;
    .end local v3    # "contexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumeGroupCount()I
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 732
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    array-length v1, v1

    monitor-exit v0

    return v1

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v1, v1

    :goto_0
    monitor-exit v0

    return v1

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumeGroupIdForStreamType(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 862
    const/4 v0, -0x1

    .line 863
    .local v0, "groupId":I
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getUsageForStreamType(I)I

    move-result v1

    .line 864
    .local v1, "usage":I
    if-ltz v1, :cond_0

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/car/CarAudioService;->getVolumeGroupIdForUsage(I)I

    move-result v0

    .line 867
    :cond_0
    return v0
.end method

.method public getVolumeGroupIdForUsage(I)I
    .locals 9
    .param p1, "usage"    # I

    .line 740
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 744
    monitor-exit v0

    return v2

    .line 747
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 748
    iget-object v4, p0, Lcom/android/car/CarAudioService;->mCarVolumeGroups:[Lcom/android/car/CarVolumeGroup;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/car/CarVolumeGroup;->getContexts()[I

    move-result-object v4

    .line 749
    .local v4, "contexts":[I
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    .line 750
    .local v7, "context":I
    sget-object v8, Lcom/android/car/CarAudioService;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 751
    monitor-exit v0

    return v3

    .line 749
    .end local v7    # "context":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 747
    .end local v4    # "contexts":[I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 755
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return v2

    .line 756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 216
    const-string v1, "CAR.AUDIO"

    const-string v2, "Audio dynamic routing not configured, run in legacy mode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/car/CarAudioService;->setupLegacyVolumeChangedListener()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarAudioService;->setupDynamicRouting()V

    .line 220
    invoke-direct {p0}, Lcom/android/car/CarAudioService;->setupVolumeGroups()V

    .line 222
    :goto_0
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVolumeCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 787
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-static {p1}, Landroid/car/media/ICarVolumeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarVolumeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->addBinder(Landroid/os/IInterface;)V

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/car/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v1}, Lcom/android/car/BinderInterfaceContainer;->clear()V

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 2
    .param p1, "carPatch"    # Landroid/car/media/CarAudioPatchHandle;

    .line 636
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->releaseAudioPatchLocked(Landroid/car/media/CarAudioPatchHandle;)V

    .line 639
    monitor-exit v0

    .line 640
    return-void

    .line 639
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBalanceTowardRight(F)V
    .locals 5
    .param p1, "value"    # F

    .line 568
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/android/car/CarAudioService;->getAudioControl()Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    .local v1, "audioControlHal":Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 573
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;->setBalanceTowardRight(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setBalanceTowardRight failed"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v1    # "audioControlHal":Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setFadeTowardFront(F)V
    .locals 5
    .param p1, "value"    # F

    .line 553
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/android/car/CarAudioService;->getAudioControl()Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .local v1, "audioControlHal":Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 558
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;->setFadeTowardFront(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    goto :goto_0

    .line 559
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setFadeTowardFront failed"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .end local v1    # "audioControlHal":Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setGroupVolume(III)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 260
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, p1, p3}, Lcom/android/car/CarAudioService;->callbackGroupVolumeChange(II)V

    .line 265
    iget-boolean v1, p0, Lcom/android/car/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/CarAudioService;->STREAM_TYPES:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 267
    monitor-exit v0

    return-void

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioService;->getCarVolumeGroup(I)Lcom/android/car/CarVolumeGroup;

    move-result-object v1

    .line 271
    .local v1, "group":Lcom/android/car/CarVolumeGroup;
    invoke-virtual {v1, p2}, Lcom/android/car/CarVolumeGroup;->setCurrentGainIndex(I)V

    .line 272
    .end local v1    # "group":Lcom/android/car/CarVolumeGroup;
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterVolumeCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 799
    iget-object v0, p0, Lcom/android/car/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/android/car/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-static {p1}, Landroid/car/media/ICarVolumeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarVolumeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 803
    monitor-exit v0

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
