.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
.super Ljava/lang/Object;
.source "UserScenarioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpRecord"
.end annotation


# instance fields
.field public configerState:I

.field public opTick:J

.field public operation:Ljava/lang/String;

.field public ret:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;

    .line 468
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 477
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1800()Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1802(Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 482
    .local v1, "curDate":Ljava/util/Date;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$1800()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v2, ",op:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/4 v2, -0x1

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    if-ne v2, v3, :cond_1

    .line 486
    const-string v2, ",stat:-1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 488
    :cond_1
    const-string v2, ",stat:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :goto_0
    const-string v2, ",source:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v2, ",ret:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
