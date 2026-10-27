.class public Lcom/loostone/puremic/controller/audio/PMAudioController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUF_SIZE_MILLISECOND:I = 0xc0

.field private static final BUF_SIZE_MILLISECOND_20:I = 0xf00

.field private static final CONCERT:I = 0x50

.field private static final KTV:I = 0x1e

.field private static final LATENCY_SIZE:I = 0x16800

.field private static final MUSIC_MAX:I = 0x64

.field private static final STUDIO:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "PMAudioController"

.field private static final VOCAL_CONCERT:I = 0x3c

.field private static isInit:Z = false

.field private static mDeviceCard:I = -0x1

.field private static final recordLock:Ljava/lang/Object;

.field private static final trackLock:Ljava/lang/Object;


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private audioTrack:Landroid/media/AudioTrack;

.field private final dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

.field private fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

.field private getMicDataAvailCount:I

.field private getRecDataAvailCount:I

.field private iDongleListener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

.field private latencyMicSize:J

.field private latencySize:J

.field private mAudioManager:Landroid/media/AudioManager;

.field private final maxCount:I

.field private micChannel:I

.field private final micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

.field private micReadCount:I

.field private final micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

.field private final micRunnable:Ljava/lang/Runnable;

.field private micSampleRate:I

.field private micSampleRateReal:I

.field private final micStereoBuffer:[B

.field private final micStereoBufferReal:[B

.field private musicVolume:I

.field private pausing:Z

.field private playing:Z

.field private recReadCount:I

.field private final recordBuffer:[B

.field private final recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

.field private final singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final singleThreadExecutor2:Ljava/util/concurrent/ExecutorService;

.field private switchCount:I

.field private totalSize:I

.field private trackBuf:[B

.field private final trackBuffer:[B

.field private trackGetAvailCount:I

.field private trackGetLatencyCount:I

.field private final trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

.field private final trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

.field private final trackRunnable:Ljava/lang/Runnable;

.field private trackSampleRate:I

.field private trackWriteCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/32 v0, 0x16800

    iput-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencySize:J

    .line 21
    const v0, 0x9600

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micStereoBuffer:[B

    .line 22
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micStereoBufferReal:[B

    .line 24
    const/16 v1, 0x64

    iput v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->musicVolume:I

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    .line 26
    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    .line 28
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    const v2, 0x2ee00

    invoke-direct {v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;-><init>(I)V

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 29
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-direct {v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;-><init>(I)V

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 30
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuffer:[B

    .line 31
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordBuffer:[B

    .line 32
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;-><init>(I)V

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 33
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;-><init>(I)V

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 39
    const v0, 0xac44

    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRate:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micChannel:I

    .line 41
    const v0, 0xbb80

    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRateReal:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencyMicSize:J

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->singleThreadExecutor2:Ljava/util/concurrent/ExecutorService;

    .line 52
    new-instance v0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;

    invoke-direct {v0, p0}, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO00o;-><init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    .line 71
    new-instance v0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;

    invoke-direct {v0, p0}, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0O0;-><init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    .line 88
    new-instance v0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;

    invoke-direct {v0, p0}, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0OO;-><init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;

    invoke-direct {v0, p0}, Lcom/loostone/puremic/controller/audio/PMAudioController$OooO0o;-><init>(Lcom/loostone/puremic/controller/audio/PMAudioController;)V

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRunnable:Ljava/lang/Runnable;

    .line 969
    const/4 v0, 0x3

    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->maxCount:I

    return-void
.end method

.method public static synthetic access$000(Lcom/loostone/puremic/controller/audio/PMAudioController;)Lcom/loostone/puremic/controller/audio/listener/IDongleListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->iDongleListener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/loostone/puremic/controller/audio/PMAudioController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micChannel:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/loostone/puremic/controller/audio/PMAudioController;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/loostone/puremic/controller/audio/PMAudioController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuf:[B

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/loostone/puremic/controller/audio/PMAudioController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->musicVolume:I

    return p0
.end method

.method public static synthetic access$1700([BIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->volumeChange([BIII)V

    return-void
.end method

.method public static synthetic access$200(Lcom/loostone/puremic/controller/audio/PMAudioController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRate:I

    return p0
.end method

.method public static synthetic access$300(Lcom/loostone/puremic/controller/audio/PMAudioController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRateReal:I

    return p0
.end method

.method public static synthetic access$400(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micStereoBufferReal:[B

    return-object p0
.end method

.method public static synthetic access$500(Lcom/loostone/puremic/controller/audio/PMAudioController;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micStereoBuffer:[B

    return-object p0
.end method

.method public static synthetic access$600(Lcom/loostone/puremic/controller/audio/PMAudioController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/loostone/puremic/controller/audio/PMAudioController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/loostone/puremic/controller/audio/PMAudioController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencyMicSize:J

    return-wide v0
.end method

.method public static synthetic access$714(Lcom/loostone/puremic/controller/audio/PMAudioController;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencyMicSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencyMicSize:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/loostone/puremic/controller/audio/PMAudioController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencySize:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/loostone/puremic/controller/audio/PMAudioController;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    return-object p0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "context is null, init first"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "audio"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->mAudioManager:Landroid/media/AudioManager;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private static getChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method private getDeviceCard(ZLjava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_5

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "D55"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "F30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "E38"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "E28A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "D21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "D22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "E28"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "H93"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    :goto_0
    const/16 p1, 0x11

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p1, 0x9

    goto :goto_2

    :cond_5
    const/16 p1, 0x36

    :goto_2
    return p1
.end method

.method private static mix([B[B[BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v2

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/2addr v1, v3

    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    if-le v1, v4, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    if-ge v1, v3, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    int-to-byte v3, v1

    .line 7
    aput-byte v3, p0, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static volumeChange([BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p0, v2

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    mul-int/2addr v1, p2

    .line 2
    div-int/2addr v1, p3

    int-to-byte v3, v1

    .line 3
    aput-byte v3, p0, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write([BIIZ)I
    .locals 1

    .line 9
    iget p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackWriteCount:I

    const/4 p4, 0x3

    if-ge p2, p4, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 10
    iput p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackWriteCount:I

    .line 11
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write: data.length:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "PMAudioController"

    invoke-virtual {p2, v0, p4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 14
    iget p4, p2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    .line 15
    iget v0, p2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    .line 16
    iget p2, p2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    sub-int/2addr v0, p2

    sub-int/2addr p4, v0

    const/4 p2, 0x0

    if-lt p4, p3, :cond_1

    .line 17
    iget-object p4, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {p4, p1, p2, p3}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    .line 18
    iget-object p4, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {p4, p1, p2, p3}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0([BII)I

    .line 19
    iget p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->totalSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->totalSize:I

    return p3

    :cond_1
    return p2
.end method


# virtual methods
.method public deinit()I
    .locals 5

    .line 1
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "deinit:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v1, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {v1, v3}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->setMicPowerListener(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;)V

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v1

    iget-object v4, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    invoke-virtual {v1, v4}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->unRegisterDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V

    .line 6
    iput-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    .line 7
    sget-object v1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning;->release()V

    .line 8
    sget-object v1, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {v1}, Lcom/loostone/libbottom/util/JniUtil;->resampleRelease()I

    .line 9
    sput-boolean v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    .line 11
    :cond_0
    iput-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->iDongleListener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    .line 12
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandShakeStatus()I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getHandShakeStatus: no implement"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getMicDataAvail()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicDataAvailCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicDataAvailCount:I

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getMicDataAvail:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v0

    return v0
.end method

.method public getMicPowerStatus()I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getMicPowerStatus, must init or wait init complete"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 5
    :cond_0
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning;->getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getPowerStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMicPowerStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMicStatus()I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "getMicStatus, must init or wait init complete"

    invoke-virtual {v0, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning;->getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->hasDongle()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    nop

    .line 7
    :cond_1
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMicStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRecDataAvail()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getRecDataAvailCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getRecDataAvailCount:I

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getRecDataAvail:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v0

    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getToken()I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getToken: no implement"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVocalRemoveStatus()Z
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getVocalRemoveStatus"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getVocalRemoveValue()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVocalRemoveValue()I
    .locals 4

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "getVocalRemoveValue"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "pm_music_vocal_remove_status"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pm_music_vocal_remove_status="

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vocalRemoveValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PMAudioController"

    invoke-virtual {v0, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "getVocalRemoveValue, parseInt error"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public getVolume(I)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "PMAudioController"

    const-string v2, "getVolume, must init or wait init complete"

    invoke-virtual {p1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolume: type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 23
    :pswitch_0
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef4BypassEnable()I

    move-result p1

    monitor-exit v0

    return p1

    .line 24
    :pswitch_1
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef4SceneEffectMode()I

    move-result p1

    monitor-exit v0

    return p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef4ReverbVolume()I

    move-result p1

    monitor-exit v0

    return p1

    .line 26
    :pswitch_3
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbVolume()I

    move-result p1

    monitor-exit v0

    return p1

    .line 27
    :pswitch_4
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMicVolume()I

    move-result p1

    monitor-exit v0

    return p1

    .line 28
    :pswitch_5
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMusicVolume()I

    move-result p1

    monitor-exit v0

    return p1

    .line 22
    :goto_0
    monitor-exit v0

    .line 28
    return v1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)I
    .locals 7

    .line 1
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "PMAudioController"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " will init, flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/loostone/libtuning/PuremicTuning;->init(Landroid/content/Context;JI)V

    .line 5
    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object p1

    check-cast p1, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    .line 6
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    invoke-virtual {p1, v2}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->setMicPowerListener(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;)V

    .line 7
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object p1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    invoke-virtual {p1, v2}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->registerDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V

    .line 8
    sget-object p1, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {p1}, Lcom/loostone/libbottom/util/JniUtil;->resampleInit()I

    .line 9
    sput-boolean v6, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const-string p1, "PMAudioController"

    const-string v2, " init complete "

    .line 10
    invoke-virtual {v1, p1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 12
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public micCreate(III)I
    .locals 5

    .line 1
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "PMAudioController"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "micCreate: sampleRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bufSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean p3, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    if-nez p3, :cond_0

    const-string p1, "PMAudioController"

    const-string p2, "micCreate, must init or wait init complete"

    .line 4
    invoke-virtual {v1, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 5
    monitor-exit v0

    return p1

    .line 7
    :cond_0
    const/4 p3, 0x0

    iput p3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getMicDataAvailCount:I

    .line 8
    iput p3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micReadCount:I

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencyMicSize:J

    const-wide/16 v1, 0xc0

    .line 10
    sget-object v3, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v3}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v3

    invoke-interface {v3}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getRecordVocalOffset()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->latencySize:J

    .line 11
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    .line 12
    iput p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRate:I

    .line 13
    iput p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micChannel:I

    .line 15
    monitor-exit v0

    return p3

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public micDestroy()I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "micDestroy:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    const/4 v0, 0x0

    return v0
.end method

.method public micGetMinBuf(II)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "micGetMinBuf:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getChannelConfig(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    return p1
.end method

.method public pause()I
    .locals 4

    .line 1
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "pause:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->setKaraokeMode(I)V

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    .line 11
    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, -0x1

    .line 13
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pausePlay()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->pause()I

    .line 2
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "pausePlay:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    .line 9
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readMic([B)I
    .locals 6

    .line 1
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v1

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o([BII)I

    .line 4
    iget v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micReadCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    iput v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micReadCount:I

    .line 6
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readMic: buf.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public readRec([B)I
    .locals 6

    .line 1
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v1

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 4
    array-length v1, p1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o([BII)I

    .line 7
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuffer:[B

    invoke-virtual {v2, v3, v4, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o([BII)I

    .line 9
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordBuffer:[B

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuffer:[B

    invoke-static {p1, v2, v3, v1}, Lcom/loostone/puremic/controller/audio/PMAudioController;->mix([B[B[BI)V

    .line 10
    iget v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recReadCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 11
    iput v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recReadCount:I

    .line 12
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readRec: buf.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public recCreate(III)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recCreate: sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " channel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bufSize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PMAudioController"

    invoke-virtual {v0, p2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->getRecDataAvailCount:I

    .line 3
    iput p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recReadCount:I

    .line 4
    iget-object p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {p2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    return p1
.end method

.method public recDestroy()I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "recDestroy:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->micDestroy()I

    const/4 v0, 0x0

    return v0
.end method

.method public recGetMinBuf(II)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "recGetMinBuf:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getChannelConfig(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    return p1
.end method

.method public recoveryFromJson()V
    .locals 4

    .line 1
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "recoveryFromJson:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    if-nez v2, :cond_0

    const-string v2, "PMAudioController"

    const-string v3, "recoveryFromJson, must init or wait init complete"

    .line 4
    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->recoveryFromJson()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()I
    .locals 9

    .line 1
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "resume:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->setKaraokeMode(I)V

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->startKaraoke()V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_2

    .line 11
    iget v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRate:I

    iput v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRateReal:I

    .line 12
    new-instance v1, Landroid/media/AudioRecord;

    const/4 v4, 0x1

    iget v5, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micSampleRateReal:I

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getChannelConfig(I)I

    move-result v6

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micStereoBufferReal:[B

    array-length v8, v3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    .line 13
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 14
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 16
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->singleThreadExecutor2:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->micRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 20
    monitor-exit v0

    return v1

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Puremic Record create failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, -0x1

    .line 25
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumePlay()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->resume()I

    .line 2
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "resumePlay:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    .line 5
    iget-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 7
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    .line 9
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCommonData(ILjava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommonData, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PMAudioController"

    invoke-virtual {v0, v1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCommonData, type["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is invalid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PMAudioController"

    invoke-virtual {v0, p2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    if-eqz p1, :cond_1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausePlay()I

    .line 18
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackDestroy()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "PMAudioController"

    const-string v0, "local_ig_on pausePlay & trackDestroy"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDongleListener(Lcom/loostone/puremic/controller/audio/listener/IDongleListener;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "setDongleListener:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->iDongleListener:Lcom/loostone/puremic/controller/audio/listener/IDongleListener;

    return-void
.end method

.method public setSignedToken(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "PMAudioController"

    const-string v1, "setSignedToken: no implement"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(II)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "PMAudioController"

    const-string v0, "setVolume, must init or wait init complete"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    const-class v0, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVolume: type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vol:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 57
    :pswitch_0
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4BypassEnable(I)V

    .line 58
    monitor-exit v0

    return v2

    .line 59
    :pswitch_1
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4SceneEffectMode(I)V

    .line 60
    monitor-exit v0

    return v2

    .line 61
    :pswitch_2
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4ReverbVolume(I)V

    .line 62
    monitor-exit v0

    return v2

    :pswitch_3
    const/16 p1, 0x1e

    if-eq p2, p1, :cond_4

    const/16 p1, 0x2d

    if-eq p2, p1, :cond_3

    const/16 p1, 0x3c

    if-eq p2, p1, :cond_2

    const/16 p1, 0x50

    if-eq p2, p1, :cond_1

    .line 63
    monitor-exit v0

    return v1

    .line 64
    :cond_1
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x1

    .line 65
    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4SceneEffectMode(I)V

    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x3

    .line 77
    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4SceneEffectMode(I)V

    goto :goto_0

    .line 78
    :cond_3
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x2

    .line 79
    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4SceneEffectMode(I)V

    goto :goto_0

    .line 80
    :cond_4
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    .line 81
    invoke-interface {p1, v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef4SceneEffectMode(I)V

    .line 106
    :goto_0
    monitor-exit v0

    return v2

    .line 107
    :pswitch_4
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolume(I)V

    .line 108
    monitor-exit v0

    return v2

    .line 109
    :pswitch_5
    iput p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->musicVolume:I

    .line 110
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMusicVolume(I)V

    .line 111
    monitor-exit v0

    return v2

    .line 56
    :goto_1
    monitor-exit v0

    .line 111
    return v1

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public switchPcmCardDevice(ZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPcmCardDevice: isInCar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", carType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PMAudioController"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getDeviceCard(ZLjava/lang/String;)I

    move-result p1

    sput p1, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    .line 4
    sget-boolean p2, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    if-nez p2, :cond_0

    const-string p1, "PMAudioController"

    const-string p2, "switchPcmCardDevice: isInit = false"

    .line 5
    invoke-virtual {v0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-boolean p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    if-eqz p2, :cond_1

    .line 9
    iget p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchCount:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchCount:I

    :cond_1
    if-ltz p1, :cond_2

    .line 12
    sget-object p1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%03d"

    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setDeviceCard(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 14
    sput p1, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    .line 15
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->dynamicAdjustCompPregain()V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const-string p1, "PMAudioController"

    const-string p2, "resetKaraoke:"

    .line 18
    invoke-virtual {v0, p1, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->resetKaraoke()V

    :cond_3
    return-void
.end method

.method public switchVocalRemove(Z)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchVocalRemove, onOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PMAudioController"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm_music={\"vocal_remove_onoff\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trackCreate(III)I
    .locals 13

    move-object v0, p0

    move v3, p1

    .line 1
    move/from16 v6, p3

    const-class v8, Lcom/loostone/puremic/controller/audio/PMAudioController;

    monitor-enter v8

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "PMAudioController"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackCreate: mDeviceCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->isInit:Z

    const/4 v4, -0x1

    if-nez v2, :cond_0

    const-string v0, "PMAudioController"

    const-string v2, "trackCreate, must init or wait init complete"

    .line 4
    invoke-virtual {v1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v8

    return v4

    .line 7
    :cond_0
    sget v2, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v2, :cond_1

    .line 8
    sget-object v2, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "%03d"

    :try_start_2
    new-array v11, v9, [Ljava/lang/Object;

    sget v12, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v5, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setDeviceCard(Ljava/lang/String;)V

    .line 10
    sput v4, Lcom/loostone/puremic/controller/audio/PMAudioController;->mDeviceCard:I

    .line 12
    :cond_1
    iput v3, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackSampleRate:I

    .line 13
    sget-object v11, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "PMAudioController"

    .line 14
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackCreate: sampleRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " channel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bufSize:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    .line 19
    :cond_2
    iput v10, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetAvailCount:I

    .line 20
    iput v10, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetLatencyCount:I

    .line 21
    iput v10, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackWriteCount:I

    .line 22
    iget-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    .line 23
    new-array v1, v6, [B

    iput-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuf:[B

    .line 24
    iput v10, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->totalSize:I

    .line 25
    iput v10, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchCount:I

    .line 26
    sget-object v1, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMusicVolume()I

    move-result v1

    iput v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->musicVolume:I

    .line 27
    new-instance v12, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    invoke-static {v5}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getChannelConfig(I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v7, 0x1

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v12, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    .line 28
    invoke-virtual {v12}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v9, :cond_3

    .line 29
    iget-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 30
    iget-object v1, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v10

    .line 35
    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Puremic Track create failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 39
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public trackDestroy()I
    .locals 4

    .line 1
    sget-object v0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "PMAudioController"

    const-string v3, "trackDestroy:"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    .line 4
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0()V

    .line 5
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 7
    iput-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/loostone/puremic/controller/audio/PMAudioController;->recDestroy()I

    .line 10
    iput-object v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackBuf:[B

    .line 11
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->playing:Z

    .line 12
    iput-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    .line 13
    iput v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->totalSize:I

    .line 14
    iput v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchCount:I

    .line 15
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public trackGetAvail()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetAvailCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetAvailCount:I

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "trackGetAvail:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackRingBuffer2:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;

    .line 6
    iget v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    .line 7
    iget v2, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    .line 8
    iget v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    return v1
.end method

.method public trackGetLatency()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetLatencyCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackGetLatencyCount:I

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "trackGetLatency:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    iget v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->totalSize:I

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->switchCount:I

    iget v2, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->trackSampleRate:I

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v0

    return v1

    .line 9
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trackGetMinBuf(II)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PMAudioController"

    const-string v2, "trackGetMinBuf:"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->getChannelConfig(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    return p1
.end method

.method public write([BII)I
    .locals 3

    const/4 p2, 0x0

    move v0, p2

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1
    iget-object v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/loostone/puremic/controller/audio/PMAudioController;->pausing:Z

    if-nez v1, :cond_1

    sub-int v1, p3, v0

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/loostone/puremic/controller/audio/PMAudioController;->write([BIIZ)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5

    .line 6
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return v0
.end method
