.class final Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;
.super Landroid/os/Handler;
.source "XpUpdateTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpUpdateTimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateTimeHandler"
.end annotation


# static fields
.field private static final MSG_POLL_TBOX_TIME:I = 0x2

.field private static final MSG_SINGLE_SYNC_TBOX_TIME_TIMEOUT:I = 0x3

.field private static final MSG_TOTAL_SYNC_TBOX_TIME_TIMEOUT:I = 0x4

.field private static final MSG_VHAL_EVENTS:I = 0x1


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/XpUpdateTimeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/car/XpUpdateTimeService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/XpUpdateTimeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 345
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 347
    return-void
.end method

.method private handleVhalEvents(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 418
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/XpUpdateTimeService;

    .line 420
    .local v1, "srv":Lcom/android/car/XpUpdateTimeService;
    if-nez v1, :cond_0

    .line 421
    const-string v2, "CAR.UPDATETIME"

    const-string v3, "XpUpdateTimeService is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 425
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;

    .line 426
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;

    .line 427
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;

    .line 428
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$hIWhjpr8A1GzErf4wQyVfh9hwkY;

    invoke-direct {v3, v1}, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$hIWhjpr8A1GzErf4wQyVfh9hwkY;-><init>(Lcom/android/car/XpUpdateTimeService;)V

    .line 429
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 453
    .end local v1    # "srv":Lcom/android/car/XpUpdateTimeService;
    :cond_1
    return-void
.end method

.method static synthetic lambda$handleVhalEvents$0(Landroid/car/hardware/property/CarPropertyEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 426
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$handleVhalEvents$1(Landroid/car/hardware/CarPropertyValue;)Z
    .locals 1
    .param p0, "v"    # Landroid/car/hardware/CarPropertyValue;

    .line 428
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleVhalEvents$2(Lcom/android/car/XpUpdateTimeService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p0, "srv"    # Lcom/android/car/XpUpdateTimeService;
    .param p1, "v"    # Landroid/car/hardware/CarPropertyValue;

    .line 430
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 431
    .local v0, "propertyId":I
    const v1, 0x2140100f

    if-eq v0, v1, :cond_2

    const v1, 0x2141103b

    if-eq v0, v1, :cond_1

    const v1, 0x21511049

    if-eq v0, v1, :cond_0

    .line 448
    const-string v1, "CAR.UPDATETIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported propertyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toLongArray([Ljava/lang/Long;)[J

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/car/XpUpdateTimeService;->access$400(Lcom/android/car/XpUpdateTimeService;[J)V

    .line 434
    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/car/XpUpdateTimeService;->access$700(Lcom/android/car/XpUpdateTimeService;[I)V

    .line 446
    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 437
    invoke-static {p0, v2}, Lcom/android/car/XpUpdateTimeService;->access$100(Lcom/android/car/XpUpdateTimeService;Z)V

    goto :goto_0

    .line 439
    :cond_3
    invoke-static {p0}, Lcom/android/car/XpUpdateTimeService;->access$500(Lcom/android/car/XpUpdateTimeService;)V

    .line 440
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/car/XpUpdateTimeService;->access$300(Lcom/android/car/XpUpdateTimeService;Z)V

    .line 441
    invoke-static {p0}, Lcom/android/car/XpUpdateTimeService;->access$600(Lcom/android/car/XpUpdateTimeService;)V

    .line 443
    nop

    .line 451
    :goto_0
    return-void
.end method

.method public static synthetic lambda$o3zP4Oj56DnL7t27aVv1kJbnwAk(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/CarPropertyValue;
    .locals 0

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    return-object p0
.end method

.method private serviceSyncTboxTime()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpUpdateTimeService;

    .line 375
    .local v0, "srv":Lcom/android/car/XpUpdateTimeService;
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/XpUpdateTimeService;->access$100(Lcom/android/car/XpUpdateTimeService;Z)V

    .line 378
    :cond_0
    return-void
.end method

.method private serviceSyncTboxTimeIfNotSynced()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpUpdateTimeService;

    .line 382
    .local v0, "srv":Lcom/android/car/XpUpdateTimeService;
    if-eqz v0, :cond_0

    .line 383
    invoke-static {v0}, Lcom/android/car/XpUpdateTimeService;->access$200(Lcom/android/car/XpUpdateTimeService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/XpUpdateTimeService;->access$100(Lcom/android/car/XpUpdateTimeService;Z)V

    .line 387
    :cond_0
    return-void
.end method

.method private setServiceSyncTboxTimeTimeout()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpUpdateTimeService;

    .line 396
    .local v0, "srv":Lcom/android/car/XpUpdateTimeService;
    if-eqz v0, :cond_0

    .line 397
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/XpUpdateTimeService;->access$300(Lcom/android/car/XpUpdateTimeService;Z)V

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    const-string v0, "CAR.UPDATETIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :pswitch_0
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->setServiceSyncTboxTimeTimeout()V

    .line 367
    goto :goto_0

    .line 363
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->serviceSyncTboxTimeIfNotSynced()V

    .line 364
    goto :goto_0

    .line 360
    :pswitch_2
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->serviceSyncTboxTime()V

    .line 361
    goto :goto_0

    .line 354
    :pswitch_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->handleVhalEvents(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.UPDATETIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle vhal events with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 371
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method pollTboxTime()V
    .locals 1

    .line 456
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    return-void
.end method

.method removeSyncTboxTimeTimeoutMessages()V
    .locals 1

    .line 390
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->removeMessages(I)V

    .line 391
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->removeMessages(I)V

    .line 392
    return-void
.end method

.method sendSingleSyncTboxTimeTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 412
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 414
    return-void
.end method

.method sendTotalSyncTboxTimeTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 407
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    return-void
.end method

.method sendVhalEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method
