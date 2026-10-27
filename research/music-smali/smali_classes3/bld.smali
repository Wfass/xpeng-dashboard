.class public abstract Lbld;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/b;
.implements Lcom/xiaopeng/musicradio/player/d;
.implements Lcom/xiaopeng/musicradio/player/l;


# static fields
.field public static final BUNDLE_VALUE_SAME_URL:I = 0x1

.field public static final BUNDLE_VALUE_TYPE_ID_MUSIC:I = 0x0

.field public static final BUNDLE_VALUE_TYPE_ID_PROGRAM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"


# instance fields
.field protected mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field protected mListener:Lcom/xiaopeng/musicradio/player/l;

.field protected mPlayer:Lcom/xiaopeng/musicradio/player/h;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/player/l;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    .line 41
    invoke-virtual {p0}, Lbld;->createCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lbld;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayerWrapper: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbld;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Lbld$1;

    invoke-direct {p1, p0, p2}, Lbld$1;-><init>(Lbld;Z)V

    invoke-virtual {p0, p1}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 9

    .line 261
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 263
    new-instance v8, Lbld$11;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lbld$11;-><init>(Lbld;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v8}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    .line 279
    monitor-enter v6

    .line 280
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 282
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "MediaPlayerWrapper"

    .line 284
    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 287
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract createCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
.end method

.method protected getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "MediaPlayerWrapper"

    .line 58
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getCachePath: "

    .line 60
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 63
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachePath: === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "/sdcard"

    :goto_1
    const/4 v1, 0x2

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%s/xiaopengmusic/cache/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 195
    new-instance v1, Lbld$6;

    invoke-direct {v1, p0, v0}, Lbld$6;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v2, "getCurrentPosition"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 3

    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 239
    new-instance v1, Lbld$9;

    invoke-direct {v1, p0, v0}, Lbld$9;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v2, "getDuration"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/xiaopeng/musicradio/player/l;
    .locals 1

    .line 374
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 3

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 251
    new-instance v1, Lbld$10;

    invoke-direct {v1, p0, v0}, Lbld$10;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v2, "getPlaybackState"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getPlayer()Lcom/xiaopeng/musicradio/player/h;
    .locals 1

    .line 407
    iget-object v0, p0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    return-object v0
.end method

.method public getSecondPosition()I
    .locals 3

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 207
    new-instance v1, Lbld$7;

    invoke-direct {v1, p0, v0}, Lbld$7;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v2, "getSecondPosition"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 218
    iget-object v0, p0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/h;->getSessionId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isCacheComplete(Ljava/lang/String;)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lbld;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v0, p1}, Lbla;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isIdle()Z
    .locals 3

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 183
    new-instance v1, Lbld$5;

    invoke-direct {v1, p0, v0}, Lbld$5;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-string v2, "isIdle"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 227
    new-instance v1, Lbld$8;

    invoke-direct {v1, p0, v0}, Lbld$8;-><init>(Lbld;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-string v2, "isPlaying"

    invoke-direct {p0, v1, v2}, Lbld;->syncGetValue(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadingChange(Ljava/lang/String;Z)V
    .locals 1

    .line 332
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->loadingChange(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 1

    .line 368
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onAudioInputFormatChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(Ljava/lang/String;I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onAudioSessionId(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 346
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/l;->onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    .line 317
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MediaPlayerWrapper"

    const-string v2, "onPlayError: type = %d"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onPlayError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPlayPosition(Ljava/lang/String;IIZ)V
    .locals 1

    .line 325
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public onSetData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onSetData(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onTimeLineChange(Ljava/lang/String;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/l;->onTimeLineChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 82
    new-instance v0, Lbld$17;

    invoke-direct {v0, p0}, Lbld$17;-><init>(Lbld;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playState(Ljava/lang/String;I)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lbld;->mListener:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public prepareData(Ljava/lang/String;)V
    .locals 1

    .line 92
    new-instance v0, Lbld$18;

    invoke-direct {v0, p0, p1}, Lbld$18;-><init>(Lbld;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;Z)V
    .locals 1

    .line 102
    new-instance v0, Lbld$19;

    invoke-direct {v0, p0, p1, p2}, Lbld$19;-><init>(Lbld;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZ)V
    .locals 1

    .line 112
    new-instance v0, Lbld$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lbld$20;-><init>(Lbld;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZZ)V
    .locals 7

    .line 122
    new-instance v6, Lbld$21;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbld$21;-><init>(Lbld;Ljava/lang/String;ZZZ)V

    invoke-virtual {p0, v6}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 388
    new-instance v0, Lbld$14;

    invoke-direct {v0, p0}, Lbld$14;-><init>(Lbld;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lbld;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v0, p1}, Lbla;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 172
    new-instance v0, Lbld$4;

    invoke-direct {v0, p0}, Lbld$4;-><init>(Lbld;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected runOnCommonThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 292
    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 132
    new-instance v0, Lbld$22;

    invoke-direct {v0, p0, p1}, Lbld$22;-><init>(Lbld;I)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setMeter(Lcom/xiaopeng/musicradio/player/o;)V
    .locals 1

    .line 299
    new-instance v0, Lbld$13;

    invoke-direct {v0, p0, p1}, Lbld$13;-><init>(Lbld;Lcom/xiaopeng/musicradio/player/o;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    .line 419
    new-instance v0, Lbld$15;

    invoke-direct {v0, p0, p1}, Lbld$15;-><init>(Lbld;F)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSonicVolume(F)V
    .locals 1

    .line 430
    new-instance v0, Lbld$16;

    invoke-direct {v0, p0, p1}, Lbld$16;-><init>(Lbld;F)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 142
    new-instance v0, Lbld$23;

    invoke-direct {v0, p0, p1, p2}, Lbld$23;-><init>(Lbld;FF)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 72
    new-instance v0, Lbld$12;

    invoke-direct {v0, p0}, Lbld$12;-><init>(Lbld;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSeek()V
    .locals 1

    .line 152
    new-instance v0, Lbld$2;

    invoke-direct {v0, p0}, Lbld$2;-><init>(Lbld;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 162
    new-instance v0, Lbld$3;

    invoke-direct {v0, p0}, Lbld$3;-><init>(Lbld;)V

    invoke-virtual {p0, v0}, Lbld;->runOnCommonThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public wrapCache(Ljava/lang/String;)Lcom/xiaopeng/musicradio/player/o;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
