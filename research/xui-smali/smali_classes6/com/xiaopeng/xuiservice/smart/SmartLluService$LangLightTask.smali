.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;
.super Ljava/util/TimerTask;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LangLightTask"
.end annotation


# instance fields
.field count:I

.field frontData:[I

.field frontLoop:I

.field frontNum:I

.field frontPeriod:I

.field frontRetain:I

.field oldfTick:I

.field oldfType:I

.field oldrTick:I

.field oldrType:I

.field oldsfType:Ljava/lang/String;

.field oldsrType:Ljava/lang/String;

.field rearData:[I

.field rearLoop:I

.field rearNum:I

.field rearPeriod:I

.field rearRetain:I

.field sfrontData:[Ljava/lang/String;

.field srearData:[Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 2362
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2363
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->count:I

    .line 2364
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontNum:I

    .line 2365
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearNum:I

    .line 2366
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldfType:I

    .line 2367
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldfTick:I

    .line 2368
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldrType:I

    .line 2369
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldrTick:I

    .line 2371
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontPeriod:I

    .line 2372
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontRetain:I

    .line 2373
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    .line 2374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontData:[I

    .line 2375
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->sfrontData:[Ljava/lang/String;

    .line 2377
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearPeriod:I

    .line 2378
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearRetain:I

    .line 2379
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearLoop:I

    .line 2380
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearData:[I

    .line 2381
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->srearData:[Ljava/lang/String;

    .line 2383
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldsfType:Ljava/lang/String;

    .line 2384
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->oldsrType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
    .locals 3
    .param p1, "LLEffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2391
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2392
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontPeriod:I

    .line 2393
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getRetain()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontRetain:I

    .line 2394
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getLoop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    .line 2395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontData:[I

    .line 2397
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearPeriod:I

    .line 2398
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getRetain()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearRetain:I

    .line 2399
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getLoop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearLoop:I

    .line 2400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearData:[I

    goto :goto_0

    .line 2401
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2402
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontPeriod:I

    .line 2403
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getRetain()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontRetain:I

    .line 2404
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getLoop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    .line 2405
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getSdata()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->frontLoop:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->sfrontData:[Ljava/lang/String;

    .line 2407
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearPeriod:I

    .line 2408
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getRetain()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearRetain:I

    .line 2409
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getLoop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearLoop:I

    .line 2410
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getSdata()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->rearLoop:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->srearData:[Ljava/lang/String;

    .line 2412
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 2388
    return-void
.end method
