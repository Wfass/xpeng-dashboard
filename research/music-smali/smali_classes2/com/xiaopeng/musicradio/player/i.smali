.class public final Lcom/xiaopeng/musicradio/player/i;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/i$a;,
        Lcom/xiaopeng/musicradio/player/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private d:Lcom/xiaopeng/musicradio/player/i$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

    .line 97
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:MetadataRetriever"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->b:Landroid/os/HandlerThread;

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->b:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/player/i$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/i$a;-><init>(Lcom/xiaopeng/musicradio/player/i;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/i;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/player/i;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/google/android/exoplayer2/util/Clock;)Lcom/xiaopeng/musicradio/player/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/util/Clock;)Lcom/xiaopeng/musicradio/player/i;
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/musicradio/player/i;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/i;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/util/Clock;)V

    return-object v0
.end method

.method static a(Lcom/google/android/exoplayer2/util/Clock;)Lcom/xiaopeng/musicradio/player/i;
    .locals 3

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setParseMeta(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v0

    .line 85
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/util/Clock;)Lcom/xiaopeng/musicradio/player/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/i;->d:Lcom/xiaopeng/musicradio/player/i$b;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/player/i;)Landroid/os/HandlerThread;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/i;->b:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieveMetadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetadataRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/player/i$b;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i;->d:Lcom/xiaopeng/musicradio/player/i$b;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i;->c:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method
