.class public Lcom/xiaopeng/musicradio/player/h;
.super Ljava/lang/Object;
.source "MediaPlayerModel.java"

# interfaces
.implements Lbqk$a;
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
.implements Lcom/xiaopeng/musicradio/player/d;
.implements Lcom/xiaopeng/musicradio/player/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/h$a;,
        Lcom/xiaopeng/musicradio/player/h$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field b:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

.field private c:Lcom/xiaopeng/musicradio/player/l;

.field private d:Z

.field private e:Lcom/xiaopeng/musicradio/player/p;

.field private f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private g:Lbqk;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Lcom/google/android/exoplayer2/LoadControl;

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/xiaopeng/musicradio/player/o;

.field private s:Landroid/os/Handler;

.field private t:F

.field private u:F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Z)V
    .locals 10

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/h;->d:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const/4 v2, 0x0

    .line 68
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/player/h;->j:Z

    .line 69
    iput v2, p0, Lcom/xiaopeng/musicradio/player/h;->k:I

    .line 70
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/player/h;->l:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    iput v2, p0, Lcom/xiaopeng/musicradio/player/h;->t:F

    .line 81
    iput v2, p0, Lcom/xiaopeng/musicradio/player/h;->u:F

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 87
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 88
    new-instance p1, Lcom/xiaopeng/musicradio/player/p;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p1, v2}, Lcom/xiaopeng/musicradio/player/p;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/player/p;->a(Lcom/xiaopeng/musicradio/player/p$a;)V

    .line 90
    new-instance p1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->b:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->b:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableAudioFloatOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 p2, 0x10000

    invoke-direct {v3, v0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/16 v4, 0x7530

    const v5, 0xea60

    const/16 v6, 0x9c4

    const/16 v7, 0x1388

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->m:Lcom/google/android/exoplayer2/LoadControl;

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->b:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->m:Lcom/google/android/exoplayer2/LoadControl;

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 103
    new-instance p1, Lbqk;

    invoke-direct {p1, p0}, Lbqk;-><init>(Lbqk$a;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    .line 104
    new-instance p1, Lcom/xiaopeng/musicradio/player/h$b;

    invoke-direct {p1, p0, v1}, Lcom/xiaopeng/musicradio/player/h$b;-><init>(Lcom/xiaopeng/musicradio/player/h;Lcom/xiaopeng/musicradio/player/h$1;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->s:Landroid/os/Handler;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaPlayerModel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayerModel"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/h;)Lcom/xiaopeng/musicradio/player/l;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/player/h;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    invoke-virtual {v0}, Lbqk;->a()V

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/l;->onPlayError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file:///android_asset"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/player/h;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSchedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getSecondPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/l;->onAudioSessionId(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 593
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 595
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 594
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/player/l;->onAudioInputFormatChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/io/IOException;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 564
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-static {v0}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 565
    instance-of p1, p2, Lcom/google/android/exoplayer2/ParserException;

    if-eqz p1, :cond_0

    .line 566
    check-cast p2, Lcom/google/android/exoplayer2/ParserException;

    .line 567
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ParserException;->isShouldLoadError()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MediaPlayerModel"

    const-string p2, "onLoadError: ======== "

    .line 568
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 569
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/h;->b(I)V

    .line 570
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 571
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot read frame at position"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 575
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 576
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 577
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/player/l;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/player/o;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->r:Lcom/xiaopeng/musicradio/player/o;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget v0, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getDuration()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getDuration()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getDuration()I
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3e8

    .line 116
    div-long/2addr v0, v4

    long-to-int v0, v0

    int-to-long v0, v0

    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-int v2, v0

    .line 118
    iput v2, p0, Lcom/xiaopeng/musicradio/player/h;->k:I

    .line 120
    :cond_1
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/player/h;->l:Z

    if-eqz v2, :cond_2

    .line 121
    iget v0, p0, Lcom/xiaopeng/musicradio/player/h;->k:I

    int-to-long v0, v0

    :cond_2
    long-to-int v0, v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getSecondPosition()I
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/player/h;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lbla;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getDuration()I

    move-result v0

    return v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCachedBytesRead(JJ)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 4

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/player/h$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/player/h$1;-><init>(Lcom/xiaopeng/musicradio/player/h;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackParametersChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 461
    iget v1, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 462
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/h;->b(I)V

    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    :cond_1
    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/h;->b(I)V

    goto :goto_0

    .line 472
    :cond_2
    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/h;->b(I)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged: playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " playbackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    if-ne p2, v0, :cond_1

    .line 404
    iput v1, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    .line 405
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lbqk;->a(I)V

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getSecondPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getCurrentPosition()I

    move-result p2

    sub-int/2addr p1, p2

    if-ge p1, v2, :cond_8

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v2}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_8

    .line 415
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-ne p2, v2, :cond_8

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    invoke-virtual {p1}, Lbqk;->a()V

    goto :goto_1

    .line 422
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    invoke-virtual {p1}, Lbqk;->a()V

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_5

    .line 424
    iget-object v3, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getSecondPosition()I

    move-result v5

    invoke-interface {p1, v3, v4, v5, v1}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    .line 426
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_8

    if-eq p2, v2, :cond_6

    .line 428
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    goto :goto_0

    .line 429
    :cond_6
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/player/h;->j:Z

    if-nez p2, :cond_7

    .line 430
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    .line 432
    :cond_7
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/player/h;->j:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "positionDiscontinuity ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRepeatModeChanged: repeatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 5

    const-string v0, "MediaPlayerModel"

    const-string v1, "onSeekProcessed: "

    .line 496
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getSecondPosition()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shuffleModeEnabled ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimelineChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " manifest="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayerModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz p1, :cond_0

    .line 364
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onTimeLineChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTracksChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " trackSelections="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaPlayerModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "MediaPlayerModel"

    const-string v1, "pause: "

    .line 190
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/player/h;->prepareData(Ljava/lang/String;Z)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/player/h;->prepareData(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/player/h;->prepareData(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 239
    invoke-static/range {p1 .. p1}, Lblb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "MediaPlayerModel"

    if-eqz v5, :cond_0

    const-string v4, "prepareData: uri is null"

    .line 241
    invoke-static {v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    .line 245
    :cond_0
    invoke-static/range {p1 .. p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " newPlay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " cache="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " cacheKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v7, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v7, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v7

    .line 248
    iget-object v8, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    instance-of v9, v8, Lcom/xiaopeng/musicradio/player/f;

    const-string v10, " isCache = "

    const-string v11, " len = "

    const-string v12, " pos = "

    const-string v13, " allLen = "

    if-eqz v9, :cond_3

    .line 249
    check-cast v8, Lcom/xiaopeng/musicradio/player/f;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/f;->a()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 251
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "prepareData1: key = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareData1: ======= cacheLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v8, v1}, Lbla;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v8, v1}, Lbla;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v7, "prepareData: cache not init"

    .line 256
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "prepareData2: key = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareData2: ======= cacheLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v8, v1}, Lbla;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v8, v1}, Lbla;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_2
    iget-object v7, v0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    .line 266
    iput-boolean v9, v0, Lcom/xiaopeng/musicradio/player/h;->l:Z

    goto :goto_3

    .line 268
    :cond_5
    iput-boolean v8, v0, Lcom/xiaopeng/musicradio/player/h;->l:Z

    .line 270
    :goto_3
    iput-object v1, v0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    .line 271
    iput-boolean v3, v0, Lcom/xiaopeng/musicradio/player/h;->q:Z

    if-eqz v3, :cond_6

    .line 276
    iget-object v1, v0, Lcom/xiaopeng/musicradio/player/h;->i:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/player/h;->r:Lcom/xiaopeng/musicradio/player/o;

    invoke-static {v1, v3}, Lblb;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    move-result-object v1

    goto :goto_4

    .line 278
    :cond_6
    iget-object v1, v0, Lcom/xiaopeng/musicradio/player/h;->r:Lcom/xiaopeng/musicradio/player/o;

    invoke-static {v1}, Lblb;->a(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    .line 280
    :goto_4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 282
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 283
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, v0, Lcom/xiaopeng/musicradio/player/h;->o:Landroid/os/Handler;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v1

    goto :goto_5

    .line 285
    :cond_7
    invoke-direct {v0, v4}, Lcom/xiaopeng/musicradio/player/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 286
    iput-object v5, v0, Lcom/xiaopeng/musicradio/player/h;->p:Ljava/lang/String;

    .line 287
    new-instance v3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v1, v0, Lcom/xiaopeng/musicradio/player/h;->p:Ljava/lang/String;

    .line 288
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 289
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/musicradio/player/h;->s:Landroid/os/Handler;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v1

    goto :goto_5

    .line 290
    :cond_8
    invoke-direct {v0, v4}, Lcom/xiaopeng/musicradio/player/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v3, Lcom/xiaopeng/musicradio/player/a;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/player/a;-><init>()V

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 292
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/musicradio/player/h;->s:Landroid/os/Handler;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v1

    goto :goto_5

    .line 294
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-static {}, Lblb;->a()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 295
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setConstantBitrateSeekingAlwaysEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 296
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/musicradio/player/h;->s:Landroid/os/Handler;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/player/h;->e:Lcom/xiaopeng/musicradio/player/p;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v1

    .line 299
    :goto_5
    iget-object v3, v0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 300
    iget-object v3, v0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareData: sessionId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, v0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    invoke-virtual {v1}, Lbqk;->a()V

    if-eqz v2, :cond_a

    .line 304
    invoke-virtual {v0, v8}, Lcom/xiaopeng/musicradio/player/h;->seekTo(I)V

    :cond_a
    return-void
.end method

.method public release()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 3

    const-string v0, "MediaPlayerModel"

    const-string v1, "reset: "

    .line 333
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/h;->j:Z

    const/4 v1, 0x0

    .line 335
    iput v1, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    .line 336
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v1, v1}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/h;->getSecondPosition()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlaySpeed ==== : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/h;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iput p1, p0, Lcom/xiaopeng/musicradio/player/h;->t:F

    .line 547
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xiaopeng/musicradio/player/h;->u:F

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FFF)V

    .line 548
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setSonicVolume(F)V
    .locals 3

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/player/h;->u:F

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSonicVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/h;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/h;->t:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FFF)V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVolume: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaPlayerModel"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "MediaPlayerModel"

    const-string v1, "start: "

    .line 184
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public startSeek()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h;->g:Lbqk;

    invoke-virtual {v0}, Lbqk;->a()V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "MediaPlayerModel"

    const-string v1, "stop: "

    .line 321
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/h;->j:Z

    .line 323
    iput v0, p0, Lcom/xiaopeng/musicradio/player/h;->n:I

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 325
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->f:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 326
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v1, :cond_0

    .line 327
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/h;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v0, v0}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method
