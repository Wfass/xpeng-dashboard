.class Landroid/support/v4/media/MediaController2Stub;
.super Landroid/support/v4/media/IMediaController2$Stub;
.source "MediaController2Stub.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaController2Stub"


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaController2ImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/media/IMediaController2$Stub;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method private getBrowser()Landroid/support/v4/media/MediaBrowser2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/media/MediaBrowser2;

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowser2;

    return-object v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getController()Landroid/support/v4/media/MediaController2ImplBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaController2ImplBase;

    .line 479
    if-eqz v0, :cond_0

    .line 482
    return-object v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Controller is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 474
    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 475
    return-void
.end method

.method public onAllowedCommandsChanged(Landroid/os/Bundle;)V
    .locals 1

    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    if-nez v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object p1

    .line 294
    if-nez p1, :cond_1

    .line 295
    const-string p1, "MediaController2Stub"

    const-string v0, "onAllowedCommandsChanged(): Ignoring null commands"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V

    .line 299
    return-void

    .line 285
    :catch_0
    move-exception p1

    .line 286
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public onBufferingStateChanged(Landroid/os/Bundle;IJ)V
    .locals 1

    .line 84
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaController2ImplBase;->notifyBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception p1

    .line 86
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8

    .line 451
    if-nez p1, :cond_0

    .line 452
    const-string p1, "MediaController2Stub"

    const-string p2, "onChildrenChanged(): Ignoring null parentId"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 457
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    nop

    .line 462
    if-nez v2, :cond_1

    .line 463
    return-void

    .line 465
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaController2Stub$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaController2Stub$6;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 471
    return-void

    .line 458
    :catch_0
    move-exception p1

    .line 459
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method public onConnected(Landroid/support/v4/media/IMediaSession2;Landroid/os/Bundle;ILandroid/os/Bundle;JJFJLandroid/os/Bundle;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/IMediaSession2;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            "JJFJ",
            "Landroid/os/Bundle;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p15

    .line 217
    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v4/media/MediaController2ImplBase;

    .line 218
    if-nez v2, :cond_0

    .line 220
    const-string v0, "MediaController2Stub"

    const-string v1, "onConnected after MediaController2.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    if-eqz v0, :cond_2

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 228
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v4

    .line 229
    if-eqz v4, :cond_1

    .line 230
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_2
    move-object/from16 v17, v1

    .line 235
    invoke-static/range {p2 .. p2}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v4

    .line 236
    invoke-static/range {p4 .. p4}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v6

    .line 237
    invoke-static/range {p12 .. p12}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v14

    .line 234
    move-object/from16 v3, p1

    move/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v15, p14

    move/from16 v16, p13

    move-object/from16 v18, p16

    invoke-virtual/range {v2 .. v18}, Landroid/support/v4/media/MediaController2ImplBase;->onConnectedNotLocked(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/SessionCommandGroup2;ILandroid/support/v4/media/MediaItem2;JJFJLandroid/support/v4/media/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V

    .line 239
    return-void
.end method

.method public onCurrentMediaItemChanged(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V

    .line 53
    return-void

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onCustomCommand(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    invoke-static {p1}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object p1

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string p1, "MediaController2Stub"

    const-string p2, "onCustomCommand(): Ignoring null command"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 316
    return-void

    .line 306
    :catch_0
    move-exception p1

    .line 307
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public onCustomLayoutChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 255
    if-nez p1, :cond_0

    .line 256
    const-string p1, "MediaController2Stub"

    const-string v0, "onCustomLayoutChanged(): Ignoring null commandButtonlist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 261
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .line 266
    if-nez v0, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 272
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/support/v4/media/MediaSession2$CommandButton;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_2

    .line 274
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomLayoutChanged(Ljava/util/List;)V

    .line 278
    return-void

    .line 262
    :catch_0
    move-exception p1

    .line 263
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 243
    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaController2ImplBase;

    .line 244
    if-nez v0, :cond_0

    .line 246
    const-string v0, "MediaController2Stub"

    const-string v1, "onDisconnected after MediaController2.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->close()V

    .line 251
    return-void
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 1

    .line 192
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase;->notifyError(ILandroid/os/Bundle;)V

    .line 198
    return-void

    .line 193
    :catch_0
    move-exception p1

    .line 194
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 372
    if-nez p1, :cond_0

    .line 373
    const-string p1, "MediaController2Stub"

    const-string p2, "onGetChildrenDone(): Ignoring null parentId"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 378
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    nop

    .line 383
    if-nez v2, :cond_1

    .line 384
    return-void

    .line 387
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Landroid/support/v4/media/MediaController2Stub$3;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/media/MediaController2Stub$3;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 394
    return-void

    .line 379
    :catch_0
    move-exception p1

    .line 380
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public onGetItemDone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 346
    if-nez p1, :cond_0

    .line 347
    const-string p1, "MediaController2Stub"

    const-string p2, "onGetItemDone(): Ignoring null mediaId"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 352
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    nop

    .line 357
    if-nez v0, :cond_1

    .line 358
    return-void

    .line 360
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaController2Stub$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/support/v4/media/MediaController2Stub$2;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 367
    return-void

    .line 353
    :catch_0
    move-exception p1

    .line 354
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    nop

    .line 331
    if-nez v2, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaController2Stub$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaController2Stub$1;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 341
    return-void

    .line 327
    :catch_0
    move-exception p1

    .line 328
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string p1, "MediaController2Stub"

    const-string p2, "onGetSearchResultDone(): Ignoring empty query"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 430
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    nop

    .line 435
    if-nez v2, :cond_1

    .line 437
    return-void

    .line 440
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Landroid/support/v4/media/MediaController2Stub$5;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/media/MediaController2Stub$5;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    return-void

    .line 431
    :catch_0
    move-exception p1

    .line 432
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public onPlaybackInfoChanged(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 159
    const-string v0, "MediaController2Stub"

    const-string v1, "onPlaybackInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    nop

    .line 168
    invoke-static {p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p1

    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string p1, "MediaController2Stub"

    const-string v0, "onPlaybackInfoChanged(): Ignoring null playbackInfo"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackInfoChanges(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    .line 174
    return-void

    .line 164
    :catch_0
    move-exception p1

    .line 165
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onPlaybackSpeedChanged(JJF)V
    .locals 6

    .line 71
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackSpeedChanges(JJF)V

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onPlayerStateChanged(JJI)V
    .locals 6

    .line 59
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlayerStateChanges(JJI)V

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string p1, "MediaController2Stub"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaylistChanged(): Ignoring null playlist from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 108
    invoke-static {v2}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    .line 109
    if-nez v2, :cond_1

    .line 110
    const-string v2, "MediaController2Stub"

    const-string v3, "onPlaylistChanged(): Ignoring null item in playlist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistChanges(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    .line 117
    return-void

    .line 98
    :catch_0
    move-exception p1

    .line 99
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 128
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistMetadataChanges(Landroid/support/v4/media/MediaMetadata2;)V

    .line 130
    return-void

    .line 124
    :catch_0
    move-exception p1

    .line 125
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 136
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 141
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRepeatModeChanges(I)V

    .line 142
    return-void

    .line 137
    :catch_0
    move-exception p1

    .line 138
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onRoutesInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 204
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    nop

    .line 209
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRoutesInfoChanged(Ljava/util/List;)V

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception p1

    .line 206
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string p1, "MediaController2Stub"

    const-string p2, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 405
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    nop

    .line 410
    if-nez v2, :cond_1

    .line 411
    return-void

    .line 413
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaController2Stub$4;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaController2Stub$4;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void

    .line 406
    :catch_0
    move-exception p1

    .line 407
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method public onSeekCompleted(JJJ)V
    .locals 7

    .line 180
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    nop

    .line 185
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/MediaController2ImplBase;->notifySeekCompleted(JJJ)V

    .line 186
    return-void

    .line 181
    :catch_0
    move-exception p1

    .line 182
    const-string p1, "MediaController2Stub"

    const-string p2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 1

    .line 148
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 153
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyShuffleModeChanges(I)V

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception p1

    .line 150
    const-string p1, "MediaController2Stub"

    const-string v0, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
