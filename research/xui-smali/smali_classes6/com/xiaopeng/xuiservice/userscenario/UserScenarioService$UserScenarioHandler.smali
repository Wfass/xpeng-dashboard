.class final Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;
.super Landroid/os/Handler;
.source "UserScenarioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserScenarioHandler"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 290
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 291
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 288
    const-string p1, "UserScenarioService"

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->TAG:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;I)V
    .locals 1
    .param p1, "groupIdx"    # I

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1700(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 296
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$600()Ljava/util/HashMap;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 416
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 417
    .local v0, "targetVolume":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 418
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeBtDynamic()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 419
    goto/16 :goto_3

    .line 421
    :cond_0
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVolumeBtDynamic(I)V

    .line 422
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->saveData()V

    .line 423
    .end local v0    # "targetVolume":I
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto/16 :goto_3

    .line 407
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 408
    .restart local v0    # "targetVolume":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 409
    .restart local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeDynamic()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 410
    goto/16 :goto_3

    .line 412
    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVolumeDynamic(I)V

    .line 413
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->saveData()V

    .line 414
    .end local v0    # "targetVolume":I
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto/16 :goto_3

    .line 317
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 318
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->enterInner()V

    .line 319
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceOnOff(Z)V

    .line 320
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configVolume(Z)V

    .line 321
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->shouldMonitorVolume()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    .line 324
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    .line 327
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_3
    goto/16 :goto_3

    .line 345
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 346
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v1

    if-nez v1, :cond_4

    .line 348
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v4

    aput-object v2, v3, v4

    .line 350
    monitor-exit v1

    .line 351
    goto/16 :goto_3

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 353
    :cond_4
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceOnOff(Z)V

    .line 354
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configVolume(Z)V

    .line 355
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->exitInner(I)V

    .line 356
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v5

    .line 357
    .local v5, "groupIdx":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v6

    monitor-enter v6

    .line 358
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v1

    aput-object v2, v1, v5

    .line 359
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    .line 362
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1500()[Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 365
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;

    invoke-direct {v2, p0, v5}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UserScenarioHandler$Hoerc7vXm2hNjAdeFXCZe0pgioc;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v5    # "groupIdx":I
    :cond_5
    goto/16 :goto_3

    .line 359
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v5    # "groupIdx":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 401
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v5    # "groupIdx":I
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 402
    .local v0, "status":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 403
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-ne v1, v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configVolume(Z)V

    .line 404
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    .line 405
    .end local v0    # "status":I
    .end local v2    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto/16 :goto_3

    .line 384
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 385
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v1

    if-nez v1, :cond_7

    .line 387
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    monitor-enter v1

    .line 388
    :try_start_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v4

    aput-object v2, v3, v4

    .line 389
    monitor-exit v1

    .line 390
    goto/16 :goto_3

    .line 389
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 392
    :cond_7
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-ne v1, v3, :cond_8

    .line 393
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 394
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    monitor-enter v1

    .line 395
    :try_start_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v5

    aput-object v2, v3, v5

    .line 396
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 397
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_1

    .line 396
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    .line 399
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_8
    :goto_1
    goto/16 :goto_3

    .line 370
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 371
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1300()[Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_9

    .line 373
    const-string v1, "UserScenarioService"

    const-string v2, "enter check,app observer is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 375
    goto/16 :goto_3

    .line 377
    :cond_9
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 378
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 379
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    .line 381
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_a
    goto/16 :goto_3

    .line 329
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 330
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v1

    .line 332
    .local v1, "groupIdx":I
    :try_start_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1300()[Landroid/os/IBinder;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_b

    .line 333
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1300()[Landroid/os/IBinder;

    move-result-object v3

    aget-object v3, v3, v1

    .line 334
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1400()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    move-result-object v5

    aget-object v5, v5, v1

    .line 333
    invoke-interface {v3, v5, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 335
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1300()[Landroid/os/IBinder;

    move-result-object v3

    aput-object v2, v3, v1

    .line 336
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1400()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    move-result-object v3

    aput-object v2, v3, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 340
    :cond_b
    goto :goto_2

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCENARIO_EXIT e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceOnOff(Z)V

    .line 342
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->exit()V

    .line 343
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v1    # "groupIdx":I
    goto :goto_3

    .line 300
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 302
    .restart local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v2

    aput-object v0, v1, v2

    .line 304
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getCurrentFriend()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$800(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getCurrentFriend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 306
    .local v1, "lastConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v1, :cond_c

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$900(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 310
    .end local v1    # "lastConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1000(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Z

    move-result v1

    .line 311
    .local v1, "screenSwitched":Z
    if-eqz v1, :cond_d

    .line 312
    invoke-virtual {v0, v3, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->defaultScreenModeCheck(ZZ)V

    .line 314
    :cond_d
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->enter()V

    .line 315
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v1    # "screenSwitched":Z
    nop

    .line 427
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
