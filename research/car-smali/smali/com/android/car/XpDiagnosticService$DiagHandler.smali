.class Lcom/android/car/XpDiagnosticService$DiagHandler;
.super Landroid/os/Handler;
.source "XpDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiagHandler"
.end annotation


# instance fields
.field private final MSG_DIAG_EVENT:I

.field final synthetic this$0:Lcom/android/car/XpDiagnosticService;


# direct methods
.method private constructor <init>(Lcom/android/car/XpDiagnosticService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2283
    iput-object p1, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    .line 2284
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2281
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->MSG_DIAG_EVENT:I

    .line 2285
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/XpDiagnosticService;Landroid/os/Looper;Lcom/android/car/XpDiagnosticService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/XpDiagnosticService$1;

    .line 2280
    invoke-direct {p0, p1, p2}, Lcom/android/car/XpDiagnosticService$DiagHandler;-><init>(Lcom/android/car/XpDiagnosticService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/XpDiagnosticService$DiagHandler;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService$DiagHandler;
    .param p1, "x1"    # Ljava/util/List;

    .line 2280
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->handleDiagEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/XpDiagnosticService$DiagHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService$DiagHandler;

    .line 2280
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService$DiagHandler;->cancelAll()V

    return-void
.end method

.method private cancelAll()V
    .locals 1

    .line 2293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/XpDiagnosticService$DiagHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2294
    return-void
.end method

.method private handleDiagEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 2288
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2289
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/XpDiagnosticService$DiagHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2290
    return-void
.end method

.method private handleDiagMsg(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2316
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2317
    nop

    .line 2318
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$YNHYqwLaR2i6mhkYoes5_ENk_qM;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$YNHYqwLaR2i6mhkYoes5_ENk_qM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2319
    .local v1, "onChangeList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    nop

    .line 2320
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2322
    .local v2, "onErrorList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2323
    new-instance v3, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$6eLsNzZx82cZRD0M9AsT_fldr7M;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$6eLsNzZx82cZRD0M9AsT_fldr7M;-><init>(Lcom/android/car/XpDiagnosticService$DiagHandler;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2336
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-virtual {v3, v1}, Lcom/android/car/XpDiagnosticService;->onPropertyChange(Ljava/util/List;)V

    goto :goto_1

    .line 2337
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2338
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/hardware/property/CarPropertyEvent;

    .line 2339
    .local v4, "event":Landroid/car/hardware/property/CarPropertyEvent;
    nop

    .line 2340
    invoke-virtual {v4}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    .line 2341
    .local v5, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    iget-object v6, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v7

    .line 2342
    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2341
    invoke-virtual {v6, v7, v8}, Lcom/android/car/XpDiagnosticService;->onPropertySetError(II)V

    .line 2343
    .end local v4    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v5    # "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    goto :goto_0

    .line 2346
    :cond_1
    const-string v3, "XpDiagnosticService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    .end local v1    # "onChangeList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    .end local v2    # "onErrorList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 2350
    :cond_3
    const-string v1, "XpDiagnosticService"

    const-string v2, "events is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :goto_2
    return-void
.end method

.method static synthetic lambda$handleDiagMsg$0(Landroid/car/hardware/property/CarPropertyEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 2318
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

.method static synthetic lambda$handleDiagMsg$1(Landroid/car/hardware/property/CarPropertyEvent;)Z
    .locals 2
    .param p0, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 2320
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$handleDiagMsg$2(Lcom/android/car/XpDiagnosticService$DiagHandler;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4
    .param p1, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 2324
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 2325
    .local v0, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 2326
    .local v1, "propertyId":I
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v2}, Lcom/android/car/XpDiagnosticService;->access$1000(Lcom/android/car/XpDiagnosticService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2327
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v2, v0, v1}, Lcom/android/car/XpDiagnosticService;->access$1100(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;I)V

    goto :goto_0

    .line 2328
    :cond_0
    const v2, 0x2140160e

    if-ne v2, v1, :cond_1

    .line 2329
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v2, v0}, Lcom/android/car/XpDiagnosticService;->access$1200(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    .line 2330
    :cond_1
    const v2, 0x2140100f

    if-ne v2, v1, :cond_2

    .line 2331
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v2, v0}, Lcom/android/car/XpDiagnosticService;->access$1300(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    .line 2332
    :cond_2
    const v2, 0x21401409

    if-ne v2, v1, :cond_3

    .line 2333
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$DiagHandler;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v2, v0}, Lcom/android/car/XpDiagnosticService;->access$1400(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V

    .line 2335
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2299
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2302
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->handleDiagMsg(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    goto :goto_0

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling diag msg got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
