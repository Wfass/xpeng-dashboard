.class public Lcom/xiaopeng/musicradio/player/o;
.super Ljava/lang/Object;
.source "XpBandWidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
        "Lcom/google/android/exoplayer2/upstream/TransferListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private final d:Lcom/google/android/exoplayer2/util/SlidingPercentile;

.field private final e:Lcom/google/android/exoplayer2/util/Clock;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcom/xiaopeng/musicradio/player/o$a;

.field private m:Lbkx$a;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/os/Handler;

    check-cast v0, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/musicradio/player/o;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 1

    const/16 v0, 0x7d0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/player/o;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;I)V
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/player/o;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;ILcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;ILcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->b:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcom/xiaopeng/musicradio/player/o;->c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 55
    new-instance p1, Lcom/google/android/exoplayer2/util/SlidingPercentile;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->d:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    .line 56
    iput-object p4, p0, Lcom/xiaopeng/musicradio/player/o;->e:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 p1, -0x1

    .line 57
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/player/o;->k:J

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/o;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/o;->c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-object p0
.end method

.method private a(IJJ)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->m:Lbkx$a;

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-interface {p1}, Lbkx$a;->a()Landroid/os/Bundle;

    move-result-object p1

    long-to-int p2, p2

    const-string p3, "cache_new"

    .line 118
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyPolicy: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XpBandWidthMeter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->l:Lcom/xiaopeng/musicradio/player/o$a;

    if-eqz p1, :cond_1

    .line 122
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/o;->m:Lbkx$a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/player/o$a;->a(Lbkx$a;)V

    :cond_1
    return-void
.end method

.method private b(IJJ)V
    .locals 9

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/o;->c:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lcom/xiaopeng/musicradio/player/o$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/musicradio/player/o$1;-><init>(Lcom/xiaopeng/musicradio/player/o;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbkx$a;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->m:Lbkx$a;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/player/o$a;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->l:Lcom/xiaopeng/musicradio/player/o$a;

    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/player/o;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBytesTransferred(Ljava/lang/Object;I)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/player/o;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Ljava/lang/Object;)V
    .locals 11

    monitor-enter p0

    .line 90
    :try_start_0
    iget p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->e:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 92
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->g:J

    sub-long v3, v1, v3

    long-to-int p1, v3

    .line 93
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->i:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->i:J

    .line 94
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->j:J

    iget-wide v7, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->j:J

    if-lez p1, :cond_3

    .line 96
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    const-wide/16 v7, 0x1f40

    mul-long/2addr v3, v7

    div-long/2addr v3, v5

    long-to-float v3, v3

    .line 97
    iget-object v4, p0, Lcom/xiaopeng/musicradio/player/o;->d:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    iget-wide v5, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->addSample(IF)V

    .line 98
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->i:J

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->j:J

    const-wide/32 v5, 0x80000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/player/o;->d:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->getPercentile(F)F

    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_2
    float-to-long v3, v3

    :goto_1
    iput-wide v3, p0, Lcom/xiaopeng/musicradio/player/o;->k:J

    .line 104
    :cond_3
    iget-wide v7, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    iget-wide v9, p0, Lcom/xiaopeng/musicradio/player/o;->k:J

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/musicradio/player/o;->b(IJJ)V

    .line 105
    iget-wide v7, p0, Lcom/xiaopeng/musicradio/player/o;->h:J

    iget-wide v9, p0, Lcom/xiaopeng/musicradio/player/o;->k:J

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/musicradio/player/o;->a(IJJ)V

    .line 106
    iget p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I

    if-lez p1, :cond_4

    .line 107
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/player/o;->g:J

    :cond_4
    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/player/o;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    iget p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->e:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/player/o;->g:J

    .line 75
    :cond_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/o;->n:Ljava/lang/String;

    .line 76
    iget p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/musicradio/player/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
