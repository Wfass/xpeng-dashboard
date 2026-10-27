.class final Lcom/android/car/CarConditionService$CarConditionHandler;
.super Landroid/os/Handler;
.source "CarConditionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarConditionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarConditionHandler"
.end annotation


# static fields
.field private static final MSG_HAL_EVENTS:I = 0x1


# instance fields
.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/CarConditionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/CarConditionService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/CarConditionService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 327
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/CarConditionService$CarConditionHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 329
    return-void
.end method

.method private handleHalEvents(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 351
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 352
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/car/CarConditionService$CarConditionHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarConditionService;

    .line 354
    .local v1, "srv":Lcom/android/car/CarConditionService;
    if-nez v1, :cond_0

    .line 355
    const-string v2, "CAR.CONDITION"

    const-string v3, "CarConditionService is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 359
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$tP5soSiTfEFtME45HhFDCiBuoS0;->INSTANCE:Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$tP5soSiTfEFtME45HhFDCiBuoS0;

    .line 360
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;->INSTANCE:Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;

    .line 361
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;->INSTANCE:Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;

    .line 362
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SpgO1lyyyCxDvWFgWBPNWniwyE4;

    invoke-direct {v3, v1}, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SpgO1lyyyCxDvWFgWBPNWniwyE4;-><init>(Lcom/android/car/CarConditionService;)V

    .line 363
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 368
    .end local v1    # "srv":Lcom/android/car/CarConditionService;
    :cond_1
    return-void
.end method

.method static synthetic lambda$handleHalEvents$0(Landroid/car/hardware/property/CarPropertyEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 360
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

.method static synthetic lambda$handleHalEvents$1(Landroid/car/hardware/CarPropertyValue;)Z
    .locals 1
    .param p0, "v"    # Landroid/car/hardware/CarPropertyValue;

    .line 362
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleHalEvents$2(Lcom/android/car/CarConditionService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p0, "srv"    # Lcom/android/car/CarConditionService;
    .param p1, "v"    # Landroid/car/hardware/CarPropertyValue;

    .line 364
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 365
    .local v0, "propertyId":I
    invoke-static {p0, v0, p1}, Lcom/android/car/CarConditionService;->access$500(Lcom/android/car/CarConditionService;ILandroid/car/hardware/CarPropertyValue;)V

    .line 366
    return-void
.end method

.method public static synthetic lambda$o3zP4Oj56DnL7t27aVv1kJbnwAk(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/CarPropertyValue;
    .locals 0

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarConditionService$CarConditionHandler;->handleHalEvents(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.CONDITION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle vhal events with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method sendHalEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/car/CarConditionService$CarConditionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarConditionService$CarConditionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method
