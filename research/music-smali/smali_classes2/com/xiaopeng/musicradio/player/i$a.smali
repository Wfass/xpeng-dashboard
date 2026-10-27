.class final Lcom/xiaopeng/musicradio/player/i$a;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/i$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/i;

.field private final b:Lcom/xiaopeng/musicradio/player/i$a$a;

.field private c:Lcom/google/android/exoplayer2/source/MediaSource;

.field private d:Lcom/google/android/exoplayer2/source/MediaPeriod;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/player/i;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance p1, Lcom/xiaopeng/musicradio/player/i$a$a;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/player/i$a$a;-><init>(Lcom/xiaopeng/musicradio/player/i$a;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->b:Lcom/xiaopeng/musicradio/player/i$a$a;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/i$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/i$a;Lcom/google/android/exoplayer2/source/MediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 210
    iput-object v2, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 213
    iput-object v2, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    const-string v0, "MetadataRetriever"

    const-string v1, "release2: ====="

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MetadataRetriever"

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v3, 0x4

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "handleMessage: MESSAGE_DESTROY "

    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->d(Lcom/xiaopeng/musicradio/player/i;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v2

    .line 190
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/i$b;->a(Ljava/lang/Throwable;)V

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/i$a;->a()V

    return v2

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/player/i$b;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 187
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/i$a;->a()V

    return v2

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    return v2

    .line 169
    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-nez p1, :cond_7

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->d:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    const/16 v0, 0x64

    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return v2

    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/i$a;->a()V

    .line 160
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveMetadata prepare: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->a(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->c:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a;->b:Lcom/xiaopeng/musicradio/player/i$a$a;

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return v2
.end method
