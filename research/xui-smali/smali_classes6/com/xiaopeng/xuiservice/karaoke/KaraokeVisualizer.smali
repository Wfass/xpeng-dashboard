.class public Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;
.super Ljava/lang/Object;
.source "KaraokeVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "KaraokeVisualizer"

.field private static capturesize:I

.field private static raptureRate:I


# instance fields
.field bufRunning:Z

.field mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

.field private mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

.field private mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "persist.visualizer.rate"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->raptureRate:I

    .line 75
    const-string v0, "persist.fft.capture.size"

    const/16 v1, 0x400

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->capturesize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mSampleRate:I

    .line 93
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->bufRunning:Z

    .line 25
    return-void
.end method

.method private ResBufferStart()V
    .locals 2

    .line 47
    const-string v0, "KaraokeVisualizer"

    const-string v1, "ResBufferStart"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->bufRunning:Z

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;-><init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    .line 52
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    .local v0, "t1":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    .end local v0    # "t1":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private ResBufferStop()V
    .locals 2

    .line 58
    const-string v0, "KaraokeVisualizer"

    const-string v1, "ResBufferStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->bufRunning:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mBufferingthread:Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer$ResBufferingThread;

    .line 61
    return-void
.end method

.method private RingBufferCreate()V
    .locals 2

    .line 79
    const-string v0, "KaraokeVisualizer"

    const-string v1, "RingBufferCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    const/high16 v1, 0x200000

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 16
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mSampleRate:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 16
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->raptureRate:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 16
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->capturesize:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    return-object v0
.end method


# virtual methods
.method public ResBufferWrite([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KaraokeVisualizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResBufferWrite ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public RingBufferClear()V
    .locals 2

    .line 86
    const-string v0, "KaraokeVisualizer"

    const-string v1, "RingBufferClear"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;->clear()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mByteRingBuffer:Lcom/xiaopeng/xuiservice/karaoke/utils/ByteRingBuffer;

    .line 91
    :cond_0
    return-void
.end method

.method public VisualizerStart(I)V
    .locals 2
    .param p1, "samplerate"    # I

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 32
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mSampleRate:I

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->RingBufferCreate()V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->ResBufferStart()V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setKaraokeVisualizerOn(Z)V

    .line 37
    :cond_0
    return-void
.end method

.method public VisualizerStop()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->ResBufferStop()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->RingBufferClear()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeVisualizer;->mMediaCenterService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->setKaraokeVisualizerOn(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method public declared-synchronized init()V
    .locals 0

    monitor-enter p0

    .line 28
    monitor-exit p0

    return-void
.end method
